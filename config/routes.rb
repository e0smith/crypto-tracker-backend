Rails.application.routes.draw do
  resources :cryptos
  
  resources :users do
    resources :portfolios
  end
  # resources :portfolios
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
