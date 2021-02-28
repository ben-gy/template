Rails.application.routes.draw do
  # --- generated routes above this line ---

  # Users.
  devise_for :users

  # Utilities.
  authenticate :user, lambda { |u| u.has_role?(:utilities) } do
    mount Sidekiq::Web => '/internal/sidekiq'
  end

  # legal pages
  get '/legals/privacy' => redirect(Settings.legal.privacy_policy)
  get '/legals/cookies' => redirect(Settings.legal.cookie_policy)
  get '/legals/terms' => redirect(Settings.legal.cookie_policy)
end
