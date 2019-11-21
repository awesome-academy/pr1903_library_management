Rails.application.routes.draw do
  root "pages#index"
  devise_for :users
  resources :users, only: [:show]
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "devise/sessions#destroy"
    get "signup" => "devise/users#new"
    post "signup" => "devise/users#create"
  end
  resources :categories
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
