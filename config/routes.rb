Rails.application.routes.draw do
  # get 'tasks/new'
  resources :categories do
    resources :tasks
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
