class Transaction < ApplicationRecord

    def self.nearest_transactions(lat, lon, radius=1)
        transaction_array = Transaction.all
        nearest_transactions = Array.new
        Geocoder.configure(:units => :km) 
        transaction_array.each do |tr| 
            distance = Geocoder::Calculations.distance_between([lat, lon], [tr[:lat],tr[:lon]])
            if distance < radius
                nearest_transactions.push(tr)
            end
        end

        return nearest_transactions
        
    end
end
