Rails.application.routes.draw do

  get 'requests/new'

  get 'requests/create'

  get 'requests/show'

  root controller: :requests, action: :new
  resources :requests, only: [:new, :create, :show, :edit, :update]
end
