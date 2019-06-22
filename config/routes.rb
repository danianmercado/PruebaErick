Rails.application.routes.draw do
  devise_for :users
  
  namespace :api do
    namespace :v1 do
      resources :users
      post '/auth/login', to: 'authentication#login'
      get '/*a', to: 'application#not_found'
    end
  end
end
