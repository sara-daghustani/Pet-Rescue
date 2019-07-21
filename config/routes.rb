Rails.application.routes.draw do
  # devise_for :users
  root 'reports#index'
  resources :reports
  get "reports", to: "reports#index"
  get "reports/new", to: "reports#new"
  post "reports", to: "reports#create"
  get "reports/:id", to: "reports#show"
  get "reports/:id/edit", to: "reports#edit", as: :report_edit
  patch "reports/:id", to: "reports#update"
  delete "reports/:id", to: "reports#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
