Rails.application.routes.draw do
  resource :about
  resources :experiences

  resources :users
  resource :session

  resources :projects do
    collection do
      patch :sort
    end
  end

  resources :contacts, only: [:new, :create]

  root "home#index"
  get "home" => "home#index"
  get "himitsu" => "sessions#new"
  patch "projects/:id" => "projects#update"
  get   "projects/new" => "projects#new"
  get "experiences/new" => "experiences#new"
  patch "experiences/:id" => "experiences#update"
end
