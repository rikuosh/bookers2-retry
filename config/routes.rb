Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to:"homes#top"
  
  resources :books, only:[:show, :index, :create, :edit, :update, :destroy]
  resources :users, only:[:show, :index, :edit, :update]

end
