class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
	end

	def create
		User.create(user_params)
		redirect_to '/users'
	end

end

private
def user_params
	{
		first_name:    params[:first_name],
		last_name:     params[:last_name],
		email_address: params[:email_address],
		password:      params[:password]
	}
end