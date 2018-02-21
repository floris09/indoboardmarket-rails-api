Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    resources :products
  end


end
