Rails.application.routes.draw do
  
  resources :users
  resources :registrations
  resources :sessions
  get '/', to: 'application#index'

  resources :photos
  resources :comments, only: [:create, :edit, :update, :destroy]
  resources :celebrities

  # post '/', to: 'sessions#create', as: 'login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
