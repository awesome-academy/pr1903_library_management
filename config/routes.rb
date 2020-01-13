Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "books#index"
  devise_for :users, controllers:{omniauth_callbacks: "users/omniauth_callbacks"}
  resources :users, only: [:show]
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "sessions/sessions#destroy"
    get "signup" => "devise/users#new"
    post "signup" => "devise/users#create"
  end
  resources :categories
  resources :books do 
    resources :comments
    resources :likes
    resources :request_details
    resources :follow_books
  end
  resources :request_borrows
  resources :authors do
    resources :follow_authors
  end
  resources :publishers
  resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end