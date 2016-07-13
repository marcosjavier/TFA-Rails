class SesionesController < ApplicationController
	include ActiveModel::Validations

	validates :dni, :presence =>true
	def new
		
	end

	def create
		dni=(params[:dni])
		
		  if alumno=Alumno.find_by_dni(dni)
			redirect_to '/alumnos'
		  elsif director=Director.find_by_telefono(dni)
			redirect_to '/directores'
		  else
		    redirect_to '/wellcome/index'
		  end
		
			
		#if usuarioAlu
		#	session[:user_id]=usuarioAlu.id
		#	redirect_to '/wellcome/index'
		#else
		#	flash[:error] = 'Un error ocurrio!'
		#	redirect_to '/login'
		#end
	end
end
