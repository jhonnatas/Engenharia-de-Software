Rails.application.routes.draw do
 
  resources :depends
  resources :customers
  resources :directors
  resources :movies
  devise_for :admins

  #get 'pages/home'
  get 'admins/index'
  get 'admins/show'
  
  root to: "pages#home"

  #Avoid user access to admin/sign_up directly
  #devise_for :admins, :controllers => {registrations: 'registrations'}

  #Show login as root/first page
  devise_scope :admin do
  	authenticated :admin do
  		root :to => 'pages#home', as: :authenticated_root
  	end
  	unauthenticated :admin do
  		root :to => 'devise/sessions#new', as: :unauthenticated_root
  	end
  end

  resources :genres
  resources :distribuitors
  resources :admins, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
