Rails.application.routes.draw do
  resource :portfolio
  resources :users
  resource :session
  resources :projects
  resources :contacts, only: [:new, :create]
  root "portfolio#index"
  get "home" => "portfolio#index"
  patch "projects/:id" => "projects#update"
  get   "projects/new" => "projects#new"
end
