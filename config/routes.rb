Rails.application.routes.draw do
  resources :debates
  resources :users

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  root 'home#index'
end
