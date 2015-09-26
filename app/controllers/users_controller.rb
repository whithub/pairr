class UsersController < ApplicationController
  before_filter :require_login
  before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    current_user.update(user_params)
    select_preferred_languages
    redirect_to dashboard_path
  end


  private

  def user_params
    params.require(:user).permit(:about_me)
  end

  def set_user
    @user = current_user
  end

  def select_preferred_languages
    puts "Languages here..."
  end
end
