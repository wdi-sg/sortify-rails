Rails.application.routes.draw do
	resources :jobs do
	  resources :players
	end

	resources :players do
	  resources :jobs
	end	

	root 'jobs#index'
	root 'players#index'
end
