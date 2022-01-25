Rails.application.routes.draw do
  devise_for :users

  root 'users#index'

  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end 

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :new, :create]
    resources :posts, only: [:show] do
      resources :comments, only: [:new, :create]
      resources :likes, only: [:create]
    end
  end
end
