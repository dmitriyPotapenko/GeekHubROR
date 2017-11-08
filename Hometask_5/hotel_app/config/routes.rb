Rails.application.routes.draw do
  root 'welcome#index'

  resources :continents, shallow: true do
    resources :countries, shallow: true do
      resources :cities, shallow: true do
        resources :hotels, shallow: true do
          resources :tourists
          resources :positions, shallow: true do
            resources :employees, shallow: true do
              resources :works
            end
          end
          resources :entertainments, shallow: true do
            resources :cinemas
            resources :dance_floors
            resources :cafes
            resources :restaurants
          end
        end
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
