Rails.application.routes.draw do
  resources :users
  resource :session
  resources :projects
  resources :contacts, only: [:new, :create]
  root "portfolio#index"
  patch "projects/:id" => "projects#update"
  get   "projects/new" => "projects#new"
end
