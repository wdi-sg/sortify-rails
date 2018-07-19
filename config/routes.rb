Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :genres
  resources :songs do
    resources :genres, only: :index
  end
  root "songs#index"
end
