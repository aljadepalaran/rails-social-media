class SessionsController < BaseController
  before_action :check_if_logged_in
  def create
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'You have logged out.'
  end

  def check_if_logged_in
    # TODO: redirect to user dashboard / homepage
    redirect_to root_url if session[:current_user_id].present?
  end
end
