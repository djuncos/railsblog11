Rails.application.routes.draw do
  devise_for :views
  get 'users/new'

  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'posts/new'

  get 'sessions/new'

  get 'home/index'

  root 'home#index'


  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :posts
  resources :comments, { :except => [:show, :new, :index] }

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
