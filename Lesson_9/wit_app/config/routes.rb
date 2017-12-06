Rails.application.routes.draw do

	resources :requests

  post 'answer', to: 'requests#answer'
  get 'get_answer', to: 'requests#get_answer'

root 'requests#get_answer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
