Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :communites, only: %i[index show new create edit update] do
    resources :challenges, only: %i[index new create] do
      resources :memes, only: %i[new create]
    end
  end
  resources :memes, only: %i[index show]
end
