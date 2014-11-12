class Director < ActiveRecord::Base
	self.table_name = 'directores'

	#validación del director
	validates :nombre, :presence => {:message =>"Debe ingresar un nombre"}
	validates :apellido, :presence => {:message =>"Debe ingresar un apellido"}
	validates :direccion, :presence => {:message =>"Debe ingresar un direccion"}
    validates :telefono, :presence => {:message =>"Debe ingresar un telefono"}
end     
