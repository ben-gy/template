class ApplicationController < ActionController::Base
  protect_from_forgery with: :reset_session
  
  # basic authentication
  before_action :http_basic_authenticate if Rails.env.staging?
  
  # authorisation
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # activity tracking
  after_action :track_action

  # missing record catch
  rescue_from ActiveRecord::RecordNotFound, with: :resource_not_found

  # return to origin after authentication
  before_action :store_user_location!, if: :storable_location?

  # Set the last active time on a user
  before_action :record_user_activity

  # track who is responsible for changes
  before_action :set_paper_trail_whodunnit

  protected

    # change default after sign in path
    def after_sign_in_path_for(resource_or_scope)
      stored_location_for(resource_or_scope) || super
    end

    # Ahoy tracks actions
    def track_action
      ahoy.track 'controller action', request.path_parameters
    end

  private

    # basic authentication
    def http_basic_authenticate
      authenticate_or_request_with_http_basic do |name, password|
        name == 'codeword' && password == 'p4rxaBrKLy!d9CKasTT9Dc!p.hf6m-'
      end
    end

    # Set the last active time on a user
    def record_user_activity
      if current_user
        current_user.touch :last_active_at
      end
    end

    # Not authorised rescue output
    def user_not_authorized
      flash[:alert] = 'You are not authorized to perform this action.'
      redirect_to request.referer || root_path
    end

    # Missing record rescue output
    def resource_not_found(exception)
      flash[:warning] = 'We couldn\'t find what you we\'re looking for.'
      redirect_back_or root_path
    end

    # Redirect back to somewhere safe
    def redirect_back_or(path)
      redirect_to request.referer || path
    end

    # Remember where the user was going
    def store_current_location
      store_location_for(:user, request.url)
    end

    # Only store a storable location
    def storable_location?
      request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
    end

    # If storable, store the location
    def store_user_location!
      store_location_for(:user, request.fullpath)
    end
end
