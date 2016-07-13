Rails.application.routes.draw do
  get 'inquiries/new'
  post 'inquiries/confirm'
  post 'inquiries/thanks'
  get 'inquiries/show'

  root 'top#index'
  get 'company/show' => 'company#show'

  resources :blogs
end
