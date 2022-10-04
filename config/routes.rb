Rails.application.routes.draw do
  devise_for :users
  
  root "articles#index"
  
  resources :articles do 
    resources :comments
    member do
      get :follow
      get :unfollow
    end
  end 
end
