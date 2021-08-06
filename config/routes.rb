Rails.application.routes.draw do
  get 'reservations/index'
  get '/reservations', to:'reservations#index'

  get 'reservations/add'
  post 'reservations/add', to: 'reservations#create'

  get 'reservations/:id', to: 'reservations#show'

  get 'index/add'

  get 'index/show'

  get 'rooms/index'
  get '/rooms', to: 'rooms#index'

  get 'rooms/add'
  post 'rooms/add', to: 'rooms#create'

  get 'rooms/:id', to: 'rooms#show'

  get 'hello/index'

  get 'hello/login_check'

  devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
