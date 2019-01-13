Rails.application.routes.draw do
  resources :products, controllers: {
    products: 'products'
  }
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  get 'products/requestProduct'
  get 'home/index'
  get 'home/about'
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
