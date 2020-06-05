Rails.application.routes.draw do
  # User Routes

  get '/signup' => 'users#new'
  get '/users' => 'users#index'
  post '/users' => 'users#create'

  # Session Routes
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  root to: "landings#index"

  get '/reviews' => 'reviews#index'
  resources :products do
    resources :reviews
  end

end
