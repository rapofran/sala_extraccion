class CreateDrawerContainers < ActiveRecord::Migration
  def change
    create_table :drawer_containers do |t|
      t.integer :drawers
      t.integer :movement_id

      t.timestamps
    end
  end
end
