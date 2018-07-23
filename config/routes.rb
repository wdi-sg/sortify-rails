Rails.application.routes.draw do
	root 'main#index'
	resources :genres do
		resources :songs
	end

	resources :songs
end
