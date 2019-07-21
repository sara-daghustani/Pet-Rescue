Rails.application.routes.draw do
  # devise_for :users
  root 'reports#index'
  resources :reports
  get "reports", to: "reports#index"
  get "reports/new", to: "reports#new"
  post "reports", to: "reports#create"
  get "reports/:id", to: "reports#show", as: :artist
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
