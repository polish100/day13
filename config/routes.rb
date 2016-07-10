Rails.application.routes.draw do
  #  get 'top/index'
  root 'top#index'
  get 'company/show' => 'company#show'
  resources :blogs
end
