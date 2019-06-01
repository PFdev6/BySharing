Rails.application.routes.draw do
  devise_for :users,
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
  root 'root#index'
  namespace :api do
    namespace :v1 do
      get '/index', to: 'home#index'
    end
  end
end
