class CreateQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :queries do |t|
      t.string :email
      t.decimal :lat
      t.decimal :lon
      t.integer :res_count

      t.timestamps
    end
  end
end
