Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:create, :index, :show]
  resources :episodes, only: [:create, :index, :show]
  resources :guest_appearances, only: [:new, :create]

  get '/', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # get '/logout', to: 'sessions#logout', as: 'logout'


end
