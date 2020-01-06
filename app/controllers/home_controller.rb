class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @pins = Pin.all.order("updated_at DESC")
  end

  def show
    @user = User.find_by(username: params[:id])
    @pins = Pin.select("id").where(user_id: @user.id).order("updated_at DESC")
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      @user.update(has_dp: true)
      redirect_to profile_path(@user.username)
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:id,:name,:username,:bio,:dp,:has_dp)
  end
end
