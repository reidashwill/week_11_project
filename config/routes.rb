Rails.application.routes.draw do
  root to: "landings#index"
  resources :products do
    resources :reviews
  end
end
