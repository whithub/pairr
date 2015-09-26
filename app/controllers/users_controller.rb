class UsersController < ApplicationController
  before_filter :require_login
  before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to dashboard_path
    else
      flash.now[:errors] = current_user.errors.full_messages.join(", ")
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:about_me, language_ids: [])
  end

  def set_user
    @user = current_user
  end

end
