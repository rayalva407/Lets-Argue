Rails.application.routes.draw do
  resources :debates
  resources :users

  resources :users do
    resources :debates
  end
  
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  root 'home#index'
end
