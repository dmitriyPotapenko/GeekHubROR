Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  namespace :admin do
    resources :users, only: %i[index destroy]
  end

  resources :users, except: %i[index destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
