Rails.application.routes.draw do
  get "/articles", to: "articles#index"
  get 'welcome/index'
  root 'welcome#index'
  delete  '/article/[:id]', to: "articles#destroy"
  resources :articles
end
