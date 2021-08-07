Rails.application.routes.draw do
  get 'reservations/index'

  get 'reservations/new'

  get 'reservations/show'

  get 'index/add'

  get 'index/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
