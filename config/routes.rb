Rails.application.routes.draw do
  root "concerts#index"
  
  resources :concerts do
    resources :tickets
  end
end
