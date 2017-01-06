class SesionesController < ApplicationController 



	def new
		
	end

	def create		
		
		  if @user=User.find_by_dni(params[:sesiones][:dni]) #existe el alumno
		  	logger.debug "user_sesion #{@user.inspect}"
		  	session[:user_id] = @user.id
		  	
		  	redirect_to root_path
		  else 
		  	logger.debug "no se creo una sesion"
		  	redirect_to login_path		  

		  end	
			
		
	end

	def destroy
		session[:user_id]=nil
		flash[:notice] = "You have successfully logged out."
		redirect_to root_path
		
	end
end
