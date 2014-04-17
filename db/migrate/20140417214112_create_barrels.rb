class CreateBarrels < ActiveRecord::Migration
  def change
    create_table :barrels do |t|
      t.string :type
      t.float :net_weight
      t.float :tare

      t.timestamps
    end
  end
end
