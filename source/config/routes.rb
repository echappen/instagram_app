Rails.application.routes.draw do

  root 'application#index'

  resources :albums

  resources :sessions, only: [:new, :create, :destroy]

  get '/albums', to: redirect('/')

end
