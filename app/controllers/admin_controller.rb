class AdminController < BaseController
  before_action :authenticate_user

  def authenticate_user
    return if Current.user.role == 'ADMIN'

    redirect_to root_path, notice: 'Forbidden Actions'
  end
end
