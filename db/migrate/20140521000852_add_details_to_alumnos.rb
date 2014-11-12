class AddDetailsToAlumnos < ActiveRecord::Migration
  def change
    add_column :alumnos, :telefono, :integer
    add_column :alumnos, :direccion, :string
  end
end
