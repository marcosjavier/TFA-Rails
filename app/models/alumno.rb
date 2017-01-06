class Alumno < ActiveRecord::Base
	
	# dependent: evita que pueda borrar un alumno que esté relacionado con un expediente
	
	has_many :expedientes, dependent: :restrict_with_error 

    #validación de los campos correspondientes al alumno
	validates :nombre, :presence => {:message =>"Debe ingresar nombre completo"}
	validates :apellido, :presence => {:message =>"Debe ingresar apellido completo"}
	validates :dni, :presence => {:message =>"Debe ingresar un dni"}, length: { in: 7..9}
	validates :telefono, :presence => {:message =>"Debe ingresar un telefono"}, numericality: { only_integer: true }
	validates :direccion, :presence => {:message =>"Debe ingresar una direccion"}

	
end
