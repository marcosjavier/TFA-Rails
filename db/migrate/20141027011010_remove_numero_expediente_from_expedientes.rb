class RemoveNumeroExpedienteFromExpedientes < ActiveRecord::Migration
  def change
    remove_column :expedientes, :numero_expediente, :integer
  end
end
