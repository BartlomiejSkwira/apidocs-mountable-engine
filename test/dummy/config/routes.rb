Rails.application.routes.draw do

  mount Apidocs::Engine => "/apidocs"

  namespace :api do
    namespace :v1 do
      resources :dummies, only: [:index]
    end
  end
end
