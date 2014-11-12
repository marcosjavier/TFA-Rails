class AddAlumnoRefToExpedientes < ActiveRecord::Migration
  def change
    add_reference :expedientes, :alumno, index: true
  end
end
