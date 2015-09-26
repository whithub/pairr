class SessionsController < ApplicationController

  def create
    @user = User.from_omniauth(auth_info)

    if first_time_user?
      session[:user_id] = @user.id
      redirect_to edit_user_path(@user.id)
      flash[:success] = "Welcome to Pairr! We just a need a little bit more information to get your account set up."
    elsif  @user
      session[:user_id] = @user.id
      redirect_to dashboard_path
    else
      redirect_to root_path
    end
  end

  def failure
    flash[:alert] = "Authentication error: #{params[:message].humanize}"
    redirect_to root_url
  end

  def destroy
    session.clear
    @current_user = nil
    redirect_to root_path
  end

  private

  def auth_info
    request.env['omniauth.auth']
  end

  def first_time_user?
    @user && @user.about_me == nil || @user.languages.count == 0
  end

end
