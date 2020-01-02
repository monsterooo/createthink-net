Rails.application.routes.draw do
  get '/contact', to: 'page#contact'
  get 'page/home'
  devise_for :users
  root('page#home')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
