Rails.application.routes.draw do
  resources :songs do
    resources :genres
  end

  resources :genres do
    resources :songs
  end
end