class GuestMyPagesController < ApplicationController
  def show
    @guest = Guest.find(current_guest.id)
  end
end
