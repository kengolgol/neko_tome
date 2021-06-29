class RoomsController < ApplicationController

  def index
    @guests = Guest.all
    @hosts = Host.all
  end

  def search
    
  end

  def sign_up_user_select
  end

  def sign_in_user_select
  end
end
