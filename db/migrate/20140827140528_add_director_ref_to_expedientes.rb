class AddDirectorRefToExpedientes < ActiveRecord::Migration
  def change
    add_reference :expedientes, :director, index: true
  end
end
