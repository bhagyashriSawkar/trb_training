Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  get '/', to: 'session#index'
  get '/sign_in', to: 'session#sign_in'
  post '/sign_in', to: 'session#login'
  get '/sign_up', to: 'users#new'
  post '/sign_up', to: 'users#create'
end
