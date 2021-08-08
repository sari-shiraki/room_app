Rails.application.routes.draw do
  devise_for :users
  
  root to: 'users#index'
  
  get 'reservations/index'
  get '/reservations', to:'reservations#index'

  get 'reservations/new'
  post 'reservations/new', to: 'reservations#create'

  get 'reservations/:id', to: 'reservations#show'

  get 'rooms/index'
  get '/rooms', to: 'rooms#index'

  get 'rooms/new'
  post 'rooms/new', to: 'rooms#create'

  get 'rooms/:id', to: 'rooms#show', as: 'room'

  get 'users/index'
  get '/users', to: 'users#index'
  
  get 'users/login_check'

  get 'users/:id', to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
