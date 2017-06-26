# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

transactions_examples = IO.binread("app/assets/transactions_examples.txt")

transactions_array = transactions_examples.split("\n");

transactions_array.drop(1).each do |tr|

    tr_array = tr.split(",")²   

    if (Transaction.find_by(trans_id: tr_array[0].to_i) == nil)
        Transaction.create(:trans_id => tr_array[0].to_i, 
                       :rooms => tr_array[1].to_i,
                       :area => tr_array[2].to_i,
                       :price => tr_array[3].to_i,
                       :lat => tr_array[4].to_f,
                       :lon => tr_array[5].to_f,
                       :date => tr_array[6])

    end
end
