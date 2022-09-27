Rails.application.routes.draw do
  
  root "articles#index"
  
  resources :articles do 
    resources :comments
  end

  devise_for :usuarios do
    get '/usuarios/sign_out' => 'devise/sessions#destroy'
  end
end
