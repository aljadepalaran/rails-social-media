Rails.application.routes.draw do
  constraints subdomain: 'crowdly' do
    root to: 'base#index'
    namespace :admin do
      resources :users
    end

    namespace :api do
      namespace :v1 do
        resources :users
        resources :blogs
      end
    end
  end

  get 'register', to: 'registrations#new'
  post 'register', to: 'registrations#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :test
end
