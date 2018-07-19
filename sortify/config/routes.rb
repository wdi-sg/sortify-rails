Rails.application.routes.draw do
  resources :songs
  resources :genres

  root 'songs#index'
  root 'genres#index'
end