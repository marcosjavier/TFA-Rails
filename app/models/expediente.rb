class Expediente < ActiveRecord::Base

	belongs_to :alumno
	belongs_to :director #, class_name: 'Director'
	accepts_nested_attributes_for :alumno
	accepts_nested_attributes_for :director

	delegate :nombre, to: :alumno,  prefix: true, allow_nil: true
	
	#que no guarde en la base de datos si no ingresa el alumno
	#validates :alumno, presence: true

	#que no guarde el registro en la bd si no ingresa  el director
	#validates :director, presence: true
   
    #validación de fecha
    #validates :fecha, :presence => {:message =>"Debe ingresar una fecha"}
end
