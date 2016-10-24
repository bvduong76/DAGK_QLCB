Rails.application.routes.draw do
  get 'datchos/index'

  resources :chuyenbays
  resources :changbays
  resources :hanhtrinhs
  resources :sanbays

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
