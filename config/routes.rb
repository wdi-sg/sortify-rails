Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :genre do 
	resources :songs
end

resources :songs do
	resources :genre

end

end