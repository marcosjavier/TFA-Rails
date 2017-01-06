class UsersController < ApplicationController
	before_action :require_user
  	def new
  		@user=User.new
  	end

  	def create
  		@user=User.new(user_params)
  		if @user.save
  			redirect_to '/'
  		else 
  			redirect_to 'new_user_path'
  		end
  	
  	end

  def index
  	
  end

  private
  def user_params
  	params.require(:user).permit(:dni, :name, :surname, )
  	
  end
end
