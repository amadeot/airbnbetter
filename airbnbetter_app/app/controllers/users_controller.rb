class UsersController < ApplicationController

	def index
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		redirect_to @user
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
   	def user_params
      params.require(:user).permit(:username, :password_digest, :first_name, :last_name, :location)
  end


end


# users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
