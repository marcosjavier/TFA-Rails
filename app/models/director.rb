class Director < ActiveRecord::Base
	self.table_name = 'directores'
	has_many :expedientes

	#validación del director
	validates :nombre, :presence => {:message =>"Debe ingresar nombre completo para el director"}
	validates :apellido, :presence => {:message =>"Debe ingresar apellido completo para el director"}
	validates :direccion, :presence => {:message =>"Debe ingresar una direccion"}
    validates :telefono, :presence => {:message =>"Debe ingresar un numero de telefono"}, numericality: { only_integer: true }
end     
