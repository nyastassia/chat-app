Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
root to: "messages#index"
resources :users, only: [:edit, :update]
resources :rooms, only: [:new, :create]
 get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
