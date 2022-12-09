
class Admin::UsersController < AdminController
  def index
    @users = Finders::UsersFinder.new(filter_params).execute
    @users = Kaminari.paginate_array(@users).page(params[:page]).per(2)
  end

  private

  def filter_params
    params.permit(:first_name, :last_name, :email)
  end
end
