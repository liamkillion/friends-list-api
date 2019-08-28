Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :friends, :hangs
    end
  end
  root to: "friends#index"
end
