Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#index'
  get 'gems' => 'gems#index'
  get 'transaction' => 'transactions#create'
  get 'history' => 'transactions#show'
end 
