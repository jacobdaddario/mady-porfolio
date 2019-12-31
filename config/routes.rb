Rails.application.routes.draw do
  resources :portfolio_items do
  	collection do
  		get :home
  	end
  end
  resources :posts

  devise_for :users

  root to: 'portfolio_items#home'
end
