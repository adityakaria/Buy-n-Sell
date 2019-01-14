Rails.application.routes.draw do
  resources :products do 
    member do
      patch :update_requested_by
      patch :update_requested
    end  
  end

  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  get 'products/requestProduct'
  get 'home/index'
  get 'home/about'
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
