Rails.application.routes.draw do
  resources :datves
  resources :chuyenbays
  resources :changbays
  resources :hanhtrinhs
  resources :sanbays
  root 'datves#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
