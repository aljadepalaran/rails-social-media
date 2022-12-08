Rails.application.routes.draw do
  constraints subdomain: "crowdly" do
    root to: 'base#index'
    namespace :admin do
      resources :users
    end
  end

  get 'login', to: 'sessions#create'

  get 'register', to: 'registrations#new'
  post 'register', to: 'registrations#create'

  resources :test
end
