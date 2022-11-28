Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "customers#index"

  get "alphabetized", to: "customers#alphabetized", as: "alphabetized"
  get "missing_email", to: "customers#missing_email", as: "missing_email"
end
