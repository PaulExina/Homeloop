class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :trans_id
      t.integer :rooms
      t.integer :area
      t.decimal :price
      t.decimal :lat
      t.decimal :lon
      t.date :date

      t.timestamps
    end
  end
end
