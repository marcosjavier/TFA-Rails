class CreateDirectores < ActiveRecord::Migration
  def change
    create_table :directores do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
