Rails.application.routes.draw do
  
  get '/', to: 'application#index'

  resources :photos
  resources :comments, only: [:create, :edit, :update, :destroy]
  resources :celebrities


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
