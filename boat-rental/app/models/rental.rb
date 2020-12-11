class Rental < ApplicationRecord
    validates :customer_name, :boat_name, :date_time, presence: true

    def date_time_past_actual_validation
        if date_time < Date.today
            errors.add(:date_time, "can't be in the past")
        end

        if date_time.class != DateTime  

        end
    end 
end
