class SessionsController < ApplicationController

  def create
    @user = User.from_omniauth(auth_info)

    if @user
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
    redirect_to root_path
  end

  private

  def auth_info
    request.env['omniauth.auth']
  end

end
