Rails.application.routes.draw do
  devise_for :users
  get 'genres/index'
  get 'genres/show'
  get 'genres/new'
  get 'genres/create'
  get 'genres/edit'
  get 'genres/update'
  get 'genres/destroy'
  get 'songs/index'
  get 'songs/show'
  get 'songs/new'
  get 'songs/create'
  get 'songs/edit'
  get 'songs/update'
  get 'songs/destroy'

  resources :genres do
    resources :songs
  end

  resources :songs do
    resources :genres
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
