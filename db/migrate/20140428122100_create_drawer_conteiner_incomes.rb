class CreateDrawerConteinerIncomes < ActiveRecord::Migration
  def change
    create_table :drawer_conteiner_incomes do |t|
      t.string :nro_remit
      t.integer :producer_id

      t.timestamps
    end
  end
end
