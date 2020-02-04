Rails.application.routes.draw do
  resources :messages
  # Admin panel
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root :to => 'properties#index'
  resources :properties
  resources :users
  #resources :sessions, only: [:new, :create, :destroy]
  match '/login', to: 'sessions#new', via: :get
  match '/login_create', to: 'sessions#create', via: :post
  #match '/logout', to: 'sessions#destroy', via: :delete
  match '/logout', to: 'sessions#destroy', via: :get
  get 'about', to: 'pages#about'

  get 'contact', to: 'messages#contact'

  resources :appointments

end
