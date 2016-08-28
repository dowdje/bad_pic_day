Rails.application.routes.draw do
  
  
  # resources :registrations
  # resources :sessions
  resources :users
  get '/sessions/new', to: 'sessions#new', as: 'new_session'
  post '/sessions', to: 'sessions#create', as: 'login'
  get '/', to: 'application#index', as: 'root'

  resources :photos
  resources :comments, only: [:create, :edit, :update, :destroy]
  resources :celebrities
  
  # post '/', to: 'sessions#create', as: 'login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
