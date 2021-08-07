Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :tasks
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'categories#index'
  # root to: 'home#index'

end
