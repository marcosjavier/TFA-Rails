class AddTelefonoToDirectores < ActiveRecord::Migration
  def change
    add_column :directores, :telefono, :integer
  end
end
