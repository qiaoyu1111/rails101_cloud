Rails.application.routes.draw do
  root 'clouds#index'
  resources :clouds
end
