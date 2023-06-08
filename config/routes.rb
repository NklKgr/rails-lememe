Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'community', to: 'pages#community'
  post 'posts', to: 'posts#create', as: :create_post
  post 'create', to: 'communities#create', as: 'create_community'
  get '/communities', to: 'communities#index'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :communites, only: %i[index show new create edit update] do
    resources :challenges, only: %i[index new create] do
      resources :memes, only: %i[new create]
      resources :posts, only: [:index, :create]
    end
  end
  resources :memes, only: %i[index show]
  resources :posts, only: [:index, :create]
  resources :communities, only: [:new, :create, :show]

end
