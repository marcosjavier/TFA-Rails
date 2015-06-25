	class Alumno < ActiveRecord::Base
	has_many :expedientes

    #validación de alumno
	validates :nombre, :presence => {:message =>"Ingresar un nombre"}
	validates :apellido, :presence => {:message =>"Debe ingresar un apellido"}
	validates :dni, :presence => {:message =>"Debe ingresar un dni"}
	validates :telefono, :presence => {:message =>"Debe ingresar un telefono"}
	validates :direccion, :presence => {:message =>"Debe ingresar un direccion"}
end
