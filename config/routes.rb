Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  root "portfolio#index"
  get "home" => "portfolio#index"
  get "resume" => "portfolio#resume"
  get "resume/view" => "portfolio#view_resume"
  get "projects" => "portfolio#projects"
  get "contact" => "contacts#new"
end
