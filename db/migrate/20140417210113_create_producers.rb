class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :dni
      t.string :name
      t.string :last_name
      t.string :telephone
      t.string :address
      t.string :renapa

      t.timestamps
    end
  end
end
