class LoginController < ApplicationController
  def signin
  	@user = User.new(params[:user])
  end
end
