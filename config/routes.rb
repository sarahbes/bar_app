Rails.application.routes.draw do
  devise_for :users
  root 'bars#index'
	resources :bars do
    resources :users 
  end 
end
