Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "home#index"
  get "/toyes", to: "toyes#index"
  get "/contact", to: "home#contact"
  
  get "/toyes/electrical", to: "toyes#electrical"
  get "/toyes/ride", to: "toyes#ride"
  get "/toyes/teddy", to: "toyes#teddy"
  get "/toyes/small", to: "toyes#small"
  get "/toyes/musical", to: "toyes#musical"
  get '/login', to: 'user#login'
  get '/signup', to: 'user#signup'
  
  post '/signup', to: 'user#create'
  post '/login', to: 'user#verify'

end

