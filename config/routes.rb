Rails.application.routes.draw do
  devise_for :models
  devise_for :users
  
  root "articles#index"
  
  resources :articles do 
    resources :comments
  end 
end
