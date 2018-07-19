Rails.application.routes.draw do
  root "songs#index"

  resources :genres, only: [:index] do
    resources :songs, only: [:index]
  end

  resources :songs, only: [:show, :new, :create]
end
