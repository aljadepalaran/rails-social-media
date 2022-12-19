class ProfileController < BaseController
  def index
    @user = User.last
  end
end
