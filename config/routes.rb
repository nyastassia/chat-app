Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
root to: "messages#index"
resources :users, only: [:edit, :update]
 get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
