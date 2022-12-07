Rails.application.routes.draw do
  constraints subdomain: "crowdly" do
    # root to: 'test#index'
    
  end

  resources :test
end
