class DashboardController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    session[:CTF_FLAG] = "2112"
  end
end
