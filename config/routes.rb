Rails.application.routes.draw do
  get 'profiles/index'
  root to: 'welcome#index'
  get 'welcome/index'
  get 'profile/index'

  resources :posts
  resources :profiles
  devise_for :users
end
