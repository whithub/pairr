class MatchesController < ApplicationController
  def index
    @user = current_user
    @matches = @user.matches
  end
end
