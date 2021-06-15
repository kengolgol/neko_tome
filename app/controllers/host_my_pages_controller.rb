class HostMyPagesController < ApplicationController
  def show
    @host = Host.find(current_host.id)
  end
end
