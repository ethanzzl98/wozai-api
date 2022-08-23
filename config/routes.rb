Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'login', to: 'sessions#login'
      post 'users/profile', to: 'users#update'
      get 'users/recent', to: 'users#recent'
      get 'users/frequent', to: 'users#frequent'
      resources :venues do
        resources :checkins, only: %i[index create]
      end
    end
  end
end
