Rails.application.routes.draw do
  get 'sessions/create'

  resources :users
  resources :pictures

  root 'pictures#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#login'
  get '/logout' => 'sessions#logout'


  get '/pictures/:id' => 'pictures#show'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
