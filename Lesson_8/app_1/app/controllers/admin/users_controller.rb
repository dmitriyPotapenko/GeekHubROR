class Admin::UsersController < Admin::ApplicationController
  before_action :find_user, except: :index

  def index
    @users = User.all
  end

  def destroy
    @user.destroy

    redirect_to admin_users_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
