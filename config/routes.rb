Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :friends, :hangs
      root to: "home#index"
    end
  end
end
