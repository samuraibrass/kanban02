Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :list, only: [:new, :create, :edit,:update,:destroy] do
    resources :card, expect: [:index]  
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
