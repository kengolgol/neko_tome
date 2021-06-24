class GuestMyPagesController < ApplicationController
  def show
    @guest = Guest.find(current_guest.id)
  end

    # follow機能用メソッド
  def follow_list
    @guest = Guest.find(params[:id])
    @follower_hosts = @guest.all_following
  end
end
