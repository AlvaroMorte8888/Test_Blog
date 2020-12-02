Rails.application.routes.draw do
  get "/articles", to: "articles#index"
  get 'welcome/index'
  root 'welcome#index'
  resources :articles
end
