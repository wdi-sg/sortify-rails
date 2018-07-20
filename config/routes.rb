Rails.application.routes.draw do
  resources :genres_songs
  resources :songs
  resources :genres

  resources :genres do
    resources :songs
  end

  resources :songs do  
    resources :genres
  end

end