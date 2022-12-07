Rails.application.routes.draw do
  constraints subdomain: "crowdly" do
    root to: 'base#index'
  end

  resources :test
end
