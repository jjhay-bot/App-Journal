Rails.application.routes.draw do
  resources :covers
  # get 'cover_image_links/index'
  # get 'cover_image_links/new'
  resources :categories do
    resources :tasks
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'categories#index'
end
