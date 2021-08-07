Rails.application.routes.draw do
  get 'reservations/index'
  get '/reservations', to:'reservations#index'

  get 'reservations/new'
  post 'reservations/new', to: 'reservations#create'

  get 'reservations/:id', to: 'reservations#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
