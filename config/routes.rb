Rails.application.routes.draw do
  constraints subdomain: "crowdly" do
    root to: 'base#index'
    namespace :admin do
      resources :users
    end
  end

  get 'register', to: 'registrations#new'
  post 'register', to: 'registrations#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :test
end
