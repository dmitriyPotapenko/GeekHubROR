Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :countries, shallow: true do
    resources :cities, shallow: true do
      resources :airports, shallow: true do
        resources :planes
      end
    end
  end

  resources :passangers, shallow: true do
    resources :tickets
  end
end
