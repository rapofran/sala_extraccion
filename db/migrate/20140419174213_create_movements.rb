class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.string :type
      t.string :nro_remit
      t.integer :producer_id

      t.timestamps
    end
  end
end
