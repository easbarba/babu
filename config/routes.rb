Rails.application.routes.draw do
  root to: "welcome#index"

  # welcome
  get "welcome/index"

  # posts
  resources :posts

  # users
  devise_for :users
end
