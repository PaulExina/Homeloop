class CreateQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :queries do |t|
      t.string :email
      t.float :lat
      t.float :lon
      t.integer :res_count

      t.timestamps
    end
  end
end
