class CreateWaxes < ActiveRecord::Migration
  def change
    create_table :waxes do |t|
      t.float :weight

      t.timestamps
    end
  end
end
