Rails.application.routes.draw do
  resources :restaurants do
    collection do
       # /restaurants/top
      get :top
    end
    member do
      # /restaurants/:id/chef
      get :chef
    end
    resources :reviews, only: [:new,:create]
  end
  resources :reviews, only: [:destroy]

  # get "restaurants/top", to: "restaurants#top"

  # # /restaurants/top

  # /restaurants/:id/reviews


end
