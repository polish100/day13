Rails.application.routes.draw do
  #  get 'top/index'
  root 'top#index'
  resources :blogs
end
