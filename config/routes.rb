Rails.application.routes.draw do
  devise_for :users
  
  get 'homes/index'
  get '/home', to: 'homes#index'
  get 'search', to:'homes#search'
  
  root to: 'users#index'
  
  get 'reservations/index'
  get '/reservations', to:'reservations#index'


  get 'reservations/:id', to: 'reservations#show'

  get 'rooms/index'
  get '/rooms', to: 'rooms#index'

  get 'rooms/new'
  post 'rooms/new', to: 'rooms#create'

  get 'rooms/:id', to: 'rooms#show', as: 'room'
  post 'rooms/:id', to: 'reservations#create'

  get 'users/index'
  get '/users', to: 'users#index'
  
  get 'users/login_check'

  get 'users/:id', to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
