Rails.application.routes.draw do
  get 'sessions_controller/create'

  resources :users
  resources :pictures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
