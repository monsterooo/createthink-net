Rails.application.routes.draw do
  resources :contacts
  resources :articles
  resources :categories
  devise_for :users
  get '/contact', to: 'page#contact'
  root 'page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
