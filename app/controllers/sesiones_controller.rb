class SesionesController < ApplicationController
   



	def new
		
	end

	def create
		dni=(params[:sesiones][:dni])
		
		  if @alumno_logueado=Alumno.find_by_dni(params[:sesiones][:dni])

		  	redirect_to '/alumnos'
		  elsif director=Director.find_by_telefono(dni)
		  	redirect_to '/directores'
		  else
		    redirect_to '/wellcome/index'
		  end
		
			
		
	end
end
