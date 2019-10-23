Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :friends, :hangs
      post 'user/token' => 'user_token#create'
      get 'users/current' => 'users#current'
      post 'find'
      root to: "home#index"
    end
  end
end
