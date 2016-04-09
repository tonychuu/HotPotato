class UsersController < ApplicationController
	def create
		@user = User.new(user_params.merge(:role => "client"))

		@user.save

		redirect_to @user
	end

	def user_params
		params.require(:user).permit(:company, :phone, :govid, :notes, :firstname, :lastname, :email, :address, :city, :country, :idtype)
	end
end
