Rails.application.routes.draw do
  
  get '/', to: 'application#index'

  resources :photos
  resources :comments
  resources :celebrities


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
