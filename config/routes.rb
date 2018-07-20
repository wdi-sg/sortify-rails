Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs do
    resources :genres
  end
  
  resources :genres do
    resources :songs
  end
end
