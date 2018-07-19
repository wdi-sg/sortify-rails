Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :owners do
		resources :pets
	end

	resources :pets do
		resources :owners
	end
	
	resources :owners
	resources :pets
	
end
