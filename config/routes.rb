Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :posts do
    resources :comments
  end

  resources :profiles

  devise_for :users, controllers: { registrations: 'users/registrations' }
end
