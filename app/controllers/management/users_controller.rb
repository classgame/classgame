class Management::UsersController < Management::ManagementBaseController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    @user.save
    respond_with_index(@users, management_users_path)
  end

  def update
    @user.update(user_params)
    respond_with_index(@user, management_users_path)
  end

  def destroy
    @user.destroy
    respond_with_index(@users, management_users_path)
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name,
                                   :username,
                                   :email
      )
    end
end
