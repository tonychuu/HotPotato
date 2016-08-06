class UsersController < ApplicationController
	def create
		@user = User.new(user_params)

		@user.save

		redirect_to @user
	end

	def user_params
		params.require(:user).permit(:name, :email)
	end
end
