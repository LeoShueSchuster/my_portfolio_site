# frozen_string_literal: true

Rails.application.routes.draw do
  resource :about, only: %i[edit update]
  resources :experiences, except: %i[show index]
  resources :users, only: %i[show destroy index]
  resource :session

  resources :projects, except: %i[show index] do
    collection do
      patch :sort
    end
  end

  resources :contacts, only: %i[new create]

  root 'home#index'
  get 'home' => 'home#index'
  get 'himitsu' => 'sessions#new'
  patch 'projects/:id' => 'projects#update'
  get   'projects/new' => 'projects#new'
  get 'experiences/new' => 'experiences#new'
  patch 'experiences/:id' => 'experiences#update'
end
