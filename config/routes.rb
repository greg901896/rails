Rails.application.routes.draw do
  devise_for :users
  resources :lists
  resources :totals
  root "totals#index"
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    #root "home#index"
end
 