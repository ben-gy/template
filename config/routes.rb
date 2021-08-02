Rails.application.routes.draw do
  # --- generated routes above this line ---

  # Users.
  devise_for :users, controllers: { registrations: 'users/registrations' }

  # Utilities.
  authenticate :user, lambda { |u| u.has_role?(:utilities) } do
    mount Sidekiq::Web => '/internal/sidekiq'
  end

  # Legals.
  get '/privacy' => redirect(Settings.legal.privacy_policy)
  get '/cookies' => redirect(Settings.legal.cookie_policy)
  get '/terms' => redirect(Settings.legal.cookie_policy)
end
