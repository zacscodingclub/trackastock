class FriendshipsController < ApplicationController
  def destroy
    @friendship = current_user.friendships.where(friend_id: params[:id]).first
    @friendship.destroy

    respond_to do |f|
      f.html { redirect_to my_friends_path, notice: "That friend was removed" }
    end
  end
end
