MousehouseRails::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => :show
  
  namespace :api do
    namespace :v1  do
      match 'sign_in' => 'tokens#create', :via => :post
      match 'sign_out' => 'tokens#destroy', :via => :post
      #resources :tokens, :only => [:create, :destroy]
    end
  end
  
  
end
