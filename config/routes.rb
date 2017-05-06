Rails.application.routes.draw do

  get 'landing/index'

  root controller: :landing, action: :index
  resources :requests, only: [:new, :create, :show, :edit, :update]
end
