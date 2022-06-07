Rails.application.routes.draw do
  root to: 'welcome#index'

  get 'profile/index'

  resources :posts
  resources :profiles

  devise_for :users
end
