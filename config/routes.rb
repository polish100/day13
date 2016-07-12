Rails.application.routes.draw do
  get 'inquiries/new'

  get 'inquiries/confirm'

  get 'inquiries/thanks'

  get 'inquiries/show'

  #  get 'top/index'
  root 'top#index'
  get 'company/show' => 'company#show'

  # resources :inquiries
  resources :blogs
end
