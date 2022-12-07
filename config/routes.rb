Rails.application.routes.draw do
  constraints subdomain: "crowdly" do
    root to: 'base#index'
    namespace :admin do
      resources :users
    end
  end

  resources :test
end
