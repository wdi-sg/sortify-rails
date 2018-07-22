Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
  	resources :players
  end

  resources :players do
  	resources :users
  end

  root to: "players#index"
end
