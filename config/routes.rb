Rails.application.routes.draw do
  constraints subdomain: "crowdly" do
    root to: 'base#example'
  end
end
