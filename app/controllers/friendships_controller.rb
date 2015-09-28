class FriendshipsController < ApplicationController
  before_filter :require_login
  before_action :set_current_user
  before_filter :set_match

  def index
    existing_requests = current_user.pending_friends + current_user.friends + [current_user]
    existing_request_ids = existing_requests.map(&:id)
    @matches = User.where.not(id: existing_request_ids)
  end

  def approve
    # @match = User.where.not(id: current_user.id).first
    # @match = User.find_by(id: params[:friend_id])
    if @user.pending_friends.include?(@match)
      @user.accept_request(@match)
    else
      @user.friend_request(@match)
    end
    redirect_to user_friendships_path(@user), notice: "Match sent"
  end


  # def reject
  #   @match.rejected!
  #   flash.now[:notice] = 'REJECTED!'
  # end

  private

  def set_current_user
    @user = current_user
  end

  def set_match
    @match = User.find_by(id: params[:friendship_id])
    # @match = User.where.not(id: params[:friend_id]).first
  end
end
