class CreateWaxes < ActiveRecord::Migration
  def change
    create_table :waxes do |t|
      t.float :weight
      t.integer :movement_id

      t.timestamps
    end
  end
end
