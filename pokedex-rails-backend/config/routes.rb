Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: {format: :json} do 
get "pokemon/types", to: "pokemon#types"
resources :items , only: [:update, :destroy ]
resources :pokemon , only: [:show, :index ,:create ,:update]do 
resources :items , only: [:index,:create]
# resources :types , only: [:index]

  end
  end
end
