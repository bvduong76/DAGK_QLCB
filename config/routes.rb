Rails.application.routes.draw do
  get 'relationships/index'

  get 'relationships/show'

  get 'relationships/new'

  get 'relationships/create'

  get 'sanbays/create'
  resources :sanbays do
    member do
      get :flying, :flyed
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
