class AddNumeroExpedienteToExpedientes < ActiveRecord::Migration
  def change
    add_column :expedientes, :numero_expediente, :string
  end
end
