class CreateExpedientes < ActiveRecord::Migration
  def change
    create_table :expedientes do |t|
      t.string :fecha
  

      t.timestamps
    end
  end
end
