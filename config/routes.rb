Rails.application.routes.draw do
  root to: "landings#index"
  resources :products do
    resources :reviews
  end

  # User Routes
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # Session Routes
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
