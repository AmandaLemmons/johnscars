class Quarterbreed < ActiveRecord::Base
    validates :jaguar_vin, :car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_zip, presence: true
end
