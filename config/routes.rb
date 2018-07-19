Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :characters do
    resources :jobs
  end

  resources :jobs do
    resources :characters
  end

  root 'welcome#index'
end
