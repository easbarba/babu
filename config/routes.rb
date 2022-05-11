Rails.application.routes.draw do
  root to: 'posts#index'

  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/destroy'
  get 'posts/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
