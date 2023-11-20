Rails.application.routes.draw do
  devise_for :users
  root "concerts#index"
  
  resources :concerts do
    resources :tickets
  end

  resources :carts, only: [:show] do
    member do
      put :buy_ticket
      delete :delete_ticket
    end
  end

  resources :profiles, only: [:show]
end
