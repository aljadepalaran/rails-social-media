class SessionsController < BaseController
  before_action :check_if_logged_in, except: [:destroy]

  def new
    
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'You have logged in'
    else
      redirect_to login_path, alert: 'Invalid credentials.'
    end
  end

  def destroy
    Rails.logger.info 'Deleting session'
    session[:user_id] = nil
    redirect_to root_path, notice: 'You have logged out.'
  end

  def check_if_logged_in
    # TODO: redirect to user dashboard / homepage
    if session[:user_id].present?
      redirect_to root_url, notice: 'You are already logged in'
    end
  end
end
