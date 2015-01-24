Rails.application.routes.draw do

  root 'application#index'

  resources :albums

  resources :sessions, only: [:new, :create, :destroy]


  get '/albums', to: redirect('/')
  get '/about', :to => "pages#about"
  get '/users/:user_id', :to => "users#show"

end
