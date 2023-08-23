class HomeController < ApplicationController
  def index
    @user_ip = request.remote_ip
  end
end
