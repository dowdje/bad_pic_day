Rails.application.routes.draw do
  
  
  resources :registrations
  # resources :sessions
  get '/sessions/new', to: 'sessions#new'
  post '/sessions/new', to: 'sessions#create', as: 'new_session'
  get '/', to: 'application#index', as: 'root'

  resources :photos
  resources :comments, only: [:create, :edit, :update, :destroy]
  resources :celebrities
  resources :users
  # post '/', to: 'sessions#create', as: 'login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
