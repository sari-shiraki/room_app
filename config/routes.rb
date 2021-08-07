Rails.application.routes.draw do
  get 'reservations/index'
  get '/reservations', to:'reservations#index'

  get 'reservations/new'
  post 'reservations/new', to: 'reservations#create'

  get 'reservations/:id', to: 'reservations#show'

  get 'rooms/index'
  get '/rooms', to: 'rooms#index'

  get 'rooms/add'
  post 'rooms/add', to: 'rooms#create'

  get 'rooms/:id', to: 'rooms#show', as: 'room'

  get 'users/index'

  get 'users/login_check'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
