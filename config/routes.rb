Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  get 'pages/private_page'
  
  # resources :reports, :user do resources :comments
  # end

  # get "reports", to: "reports#index"
  # get "reports/new", to: "reports#new"
  # post "reports", to: "reports#create"
  # get "reports/:id", to: "reports#show"
  # get "reports/:id/edit", to: "reports#edit", as: :report_edit
  # patch "reports/:id", to: "reports#update"
  # delete "reports/:id", to: "reports#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'comments#index'

  # get "comments", to: "comments#index"
  # get "comments/new", to: "comments#new"
  # post "comments", to: "comments#create"
  # get "comments/:id", to: "comments#show"
  # get "comments/:id/edit", to: "comments#edit", as: :comment_edit
  # patch "comments/:id", to: "comments#update"
  # delete "comments/:id", to: "comments#destroy"

end
