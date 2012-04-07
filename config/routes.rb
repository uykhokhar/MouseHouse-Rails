MousehouseRails::Application.routes.draw do
  resources :buildings

  resources :rooms

  resources :litters

  resources :breeding_pairs

  resources :mice

  resources :cages

  resources :mouse_racks

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
      resources :cages
      resources :mouse_racks
    end
  end
  
  
end
