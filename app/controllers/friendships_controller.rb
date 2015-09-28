class FriendshipsController < ApplicationController
  before_filter :require_login
  before_action :set_current_user
  before_filter :set_match

  def index
    existing_requests = current_user.pending_friends + current_user.friends + [current_user]
    existing_request_ids = existing_requests.map(&:id)

    rejected_requests = current_user.rejecteds
    rejected_requests_ids = rejected_requests.map(&:friend_id)

    @matches = [User.where.not(id: existing_request_ids).where.not(id: rejected_requests_ids).sample]
  end

  def approve
    if @user.pending_friends.include?(@match)
      @user.accept_request(@match)
    else
      @user.friend_request(@match)
    end
    redirect_to user_friendships_path(@user), notice: "Match sent"
  end


  def reject
    if @user.pending_friends.include?(@match)
      @user.decline_request(@match)
    end
    @user.rejecteds.create(friend_id: @match.id)

    # Below fixes a race condition allowing Whitney rejecting Justin means Justin can 'approve'
    #  again as the friendship request gets deleted.
    #
    # @match.rejecteds.create(friend_id: @user.id)

    redirect_to user_friendships_path(@user), notice: "REJECTED!"
  end

  private

  def set_current_user
    @user = current_user
  end

  def set_match
    @match = User.find_by(id: params[:friendship_id])
  end
end
