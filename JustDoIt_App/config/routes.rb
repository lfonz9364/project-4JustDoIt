Rails.application.routes.draw do

  get '/cars/new', to: 'cars#new'

  get '/cars', to: 'pages#message'
  post '/cars', to: 'cars#create'
  get '/cars/join/:id', to: 'cars#join'
  get '/cars/unjoin', to: 'cars#unjoin'
  delete '/cars/destroy', to: 'cars#destroy'
  get '/cars/show/:id', to: 'cars#show'
  get '/cars/edit/:id', to: 'cars#edit'
  post '/cars/edit/:id', to: 'cars#update'
  get '/cars/remove/:id', to: 'cars#remove'
  get '/cars/filter', to: 'cars#filter'
  post '/cars/filtering', to: 'cars#filtering'


  get '/users/new', to: 'users#new'
  post '/users/', to: 'users#create'
  delete '/users', to: 'users#destroy'

  post '/session', to: 'sessions#create'
  delete '/session', to: 'sessions#destroy'

  get '/home', to: 'pages#home'
  get '/message', to: 'pages#message'

  get '/map', to: 'maps#map'

  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
