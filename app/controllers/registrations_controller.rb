class RegistrationsController < BaseController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params.merge(role: 'ADMIN'))
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'You have successfully registered'
    else
      redirect_to '/registrations', notice: 'Registration Failed.'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password,
                                 :password_confirmation)
  end
end
