Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :communities, only: %i[index show new create edit update] do
    resources :challenges, only: %i[index new create] do
      resources :memes, only: %i[create]
    end
    resources :memberships, only: %i[index new create]
  end

  resources :memes, only: %i[new index show create] do
    resources :votes, only: %i[create update]
    resources :comments, only: %i[create]
  end
  # patch "memes/:meme_id/votes", to: "votes#upvote", as: :upvote
  # post "memes/:id/downvote", to: "memes#downvote", as: :downvote

  resources :memberships, only: %i[update]
end
