Rails.application.routes.draw do
  root 'bars#index'
	resources :bars do
    resources :users 
  end 
end
