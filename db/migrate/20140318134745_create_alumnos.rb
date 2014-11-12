class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.string :apellido
      t.integer :dni
      

      t.timestamps
    end
    
  end
end
