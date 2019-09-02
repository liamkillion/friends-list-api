Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }, controllers: { sessions: 'users/sessions' }
  namespace :api do
    namespace :v1 do
      resources :friends, :hangs, :users
    end
  end
  root to: "friends#index"
end
