Rails.application.routes.draw do
  devise_for :admins
  # get "/admin", to: "admin/welcome#index", as: 'admin'

  root 'welcome#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  resources :continents, shallow: true, only: %i[index show] do
    resources :countries, shallow: true, only: %i[index show] do
      resources :cities, shallow: true, only: %i[index show] do
        resources :hotels, shallow: true, only: %i[index show] do
          resources :entertainments, only: %i[index show]
          resources :tourists, only: %i[index show]
          resources :positions, shallow: true, only: %i[index show] do
            resources :employees, shallow: true, only: %i[index show] do
              resources :works, only: %i[index show]
            end
          end
        end
      end
    end
  end

  namespace :admin do
    resources :continents, shallow: true do
      resources :countries, shallow: true do
        resources :cities, shallow: true do
          resources :hotels, shallow: true do
            resources :entertainments
            resources :tourists
            resources :positions, shallow: true do
              resources :employees, shallow: true do
                resources :works
              end
            end
          end
        end
      end
    end
    root 'welcome#index'
  end

  resources :welcome, only: [:index]
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
