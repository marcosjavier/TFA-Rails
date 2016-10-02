class ModificarTelefono < ActiveRecord::Migration
  def change
  	change_column :alumnos, :telefono, :integer, limit: 8
  end
end
