class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :trans_id
      t.integer :rooms
      t.integer :area
      t.integer :price
      t.float :lat
      t.float :lon
      t.string :date

      t.timestamps
    end
  end
end
