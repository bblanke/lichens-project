class UsersController < ApplicationController
  def index
    if user_signed_in? && current_user.admin == true
      @users = User.all
    else
      @users = []
      redirect_to root_path, notice: 'You do not have proper permissions.'
    end
  end
  def destroy
    @user = User.find(params[:id])
        if @user.present?
          @user.destroy
        end
        redirect_to users_path, notice: 'User was removed.'
        
  end
  def admin
    @user = User.find(params[:id])
    adminVal = @user.admin
    if adminVal == false
      @user.setAdmin(true)
      redirect_to users_path, notice: 'User was added as admin.'
    else
      @user.setAdmin(false)
      redirect_to users_path, notice: 'User was removed as admin.'
    end 
  end
end
