class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :dni

      t.timestamps
    end
  end
end
