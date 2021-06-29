class HostMyPagesController < ApplicationController

  def show
    @host = Host.find(params[:id])
  end

  # follow機能用メソッド
  def follow
    @host = Host.find(params[:id])
    current_guest.follow(@host)
    redirect_to host_my_page_path(@host)
  end

  def unfollow
    @host = Host.find(params[:id])
    current_guest.stop_following(@host)
    redirect_to host_my_page_path(@host)
  end

  def follower_list
    @host = Host.find(params[:id])
    @follow_guests = @host.guest_followers
  end
end
