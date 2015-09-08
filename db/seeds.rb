# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
puts 'cargando 10 registros de alumnos'
#configuracion necesaria para que Faker tome la configuracion del archivo '/config/locales/as.yml'
Faker::Config.locale = 'as'

5.times do |registro|
  Alumno.create(nombre: Faker::Name.first_name,
  	            apellido: Faker::Name.last_name,
  	            dni: Faker::Number.number(10),  	            
  	            telefono: Faker::PhoneNumber.cell_phone,
  	            direccion: Faker::Address.street_address)	
end
puts 'carga de datos alumnos terminado'
