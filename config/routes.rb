Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'aphorisms#index'
  get '/author/:id', to: 'aphorisms#aphorisms_by_author', as: 'aphorisms_by_author'
  post 'search', to: 'search#create'
  get '/aphorism/:id', to: 'aphorisms#show'
end
