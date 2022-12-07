class AdminController < ApplicationController
  before_action :check_password

  def check_password
    if params['password'] != '123'
      redirect_to root_path, :flash => {:alert => "Forbidden"}
    end
  end
end
