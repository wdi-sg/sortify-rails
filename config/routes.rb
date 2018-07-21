Rails.application.routes.draw do
  root "genres#index"

  resources :genres, only: [:index] do
    resources :songs, only: [:index]
  end

  resources :songs, only: [:show, :new, :create, :edit, :update, :destroy]
end