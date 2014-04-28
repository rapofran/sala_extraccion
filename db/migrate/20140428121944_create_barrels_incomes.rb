class CreateBarrelsIncomes < ActiveRecord::Migration
  def change
    create_table :barrels_incomes do |t|
      t.string :nro_remit
      t.integer :producer_id

      t.timestamps
    end
  end
end
