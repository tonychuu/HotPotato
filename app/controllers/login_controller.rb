class LoginController < ApplicationController
  def signin
  	@user = User.new(params[:user])
  end
  def options_for_country
  	[
  		["Canada"],
 			["Hong Kong"]
  	]
  end
end
