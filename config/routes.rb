Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :tasks
  end
  
  root 'categories#index'
  # root to: 'home#index'

end
