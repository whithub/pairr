class MatchesController < ApplicationController
  def index
    @user = current_user
    # @matches = User.where.not(id: current_user.id)
    @match = User.where.not(id: current_user.id).first
  end


end
