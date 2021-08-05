Rails.application.routes.draw do
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
