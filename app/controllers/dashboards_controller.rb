class DashboardsController < ApplicationController
  def index
    if logged_in?
    else
      redirect_to login_path
    end
  end
end
