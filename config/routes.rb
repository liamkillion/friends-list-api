Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :friends, :hangs
      scope module: 'users' do
      devise_for :users
    end
    end
  end
  root to: "endusers#index"
end
