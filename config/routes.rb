Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events do
    resources :attendance, only: [:new, :create]
    resources :charges
  end
  resources :users
  root to:'events#index'

  
end
