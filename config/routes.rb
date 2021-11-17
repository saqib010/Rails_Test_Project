Rails.application.routes.draw do
  resources :projects
  resources :bugs
  
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root to: 'pages#home'

  get 'home', to: 'pages#home'
  get 'userpage',to:'pages#userpage'
  get 'mybug',to:'pages#mybug'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
