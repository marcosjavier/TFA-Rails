class AddNumerodeExpedienteToExpedientes < ActiveRecord::Migration
  def change
    add_column :expedientes, :numero_expediente, :integer
  end
end
