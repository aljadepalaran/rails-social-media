class BaseController < ApplicationController
  before_action :set_current_user

  def index
    return unless session[:user_id]

    @user = User.find(session[:user_id])
  end

  def set_current_user
    Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
