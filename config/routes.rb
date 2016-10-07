Rails.application.routes.draw do
  resources :basketball_stats
  devise_for :users
  root 'basketball_stats#index'
end
