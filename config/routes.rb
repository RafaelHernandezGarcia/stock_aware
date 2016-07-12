Rails.application.routes.draw do
  resources :stock_metrics
  get '/results' => 'stock_metrics#results'
  root 'static#index'

  # post 'index or whatever path'
# look up button tag in rails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
