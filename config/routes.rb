Rails.application.routes.draw do
  # get 'bugs/*missing', to: 'pages#something'
  # get 'projects/*missing', to: 'pages#something'
  resources :projects
  resources :bugs
  # get 'bugs/*missing', to: 'pages#something'
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root to: 'pages#home'

  get 'home', to: 'pages#home'
  
  get 'userpage/*missing', to: 'pages#something'
  get 'userpage',to:'pages#userpage'

  get 'mybug',to:'pages#mybug'
  get 'myproj',to:'pages#myproj'

  get 'home/*missing', to: 'pages#something'
  get '/*missing', to: 'pages#something'


  get 'project/new', to: 'projects#new'
  get 'projects', to: 'projects#index'
  get 'projects/:id', to: 'projects#show'
  get 'projects/:id/edit', to: 'projects#edit'  

  post 'projects', to: 'projects#create'
  patch 'projects/:id', to: 'projects#update' 

  delete 'projects/:id', to: 'projects#destroy'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
