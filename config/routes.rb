Rails.application.routes.draw do
  get 'songs/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :genres do
    resources :songs
  end

  resources :songs do
    resources :genres
  end

end
