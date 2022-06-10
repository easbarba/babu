Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/novo', to: 'users/registrations#new'
  get 'profile/index'

  resources :posts do
    resources :comments
  end

  resources :profiles

  devise_for :users, controllers: { registrations: 'users/registrations' }
end
