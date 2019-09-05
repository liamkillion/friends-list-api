Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :friends, :hangs
    end
  end
  root to: "endusers#index"
end
