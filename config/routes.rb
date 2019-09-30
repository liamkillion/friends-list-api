Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :friends, :hangs, :users
      devise_for :users
    end
  end
  root to: "endusers#index"
end
