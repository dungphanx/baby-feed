Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  namespace :api do
    namespace :v1 do
      resources :users, only: %i(index) do
        resources :babies, module: :users, only: %i(index) do
          resources :milk_feeds, only: %i(index create update destroy)
        end
      end
    end
  end
end
