Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :permits
  resources :vehicles
  resources :emergency_contacts
  resources :faculties
  resources :students
  root to: 'welcome#home'
  get 'welcome/about'

  get 'welcome/home'
  get '/about', to: 'welcome#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
