Rails.application.routes.draw do
  resources :transactions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'transactions#index'
  get '/all_transactions', to: 'all_transactions#list_all'
end
