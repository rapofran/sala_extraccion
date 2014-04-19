class CreateBarrelsMovementsJoinTable < ActiveRecord::Migration
  def change
    create_table :barrels_movements, id: false do |t|
      t.integer :barrel_id
      t.integer :movement_id
    end
  end
end
