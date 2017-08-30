class ServiceMan < ApplicationRecord

geocoded_by :full_address
   
after_validation :geocode  

def full_address
    "#{self.address} #{self.zipcode} #{self.city} #{self.state} #{self.country}"
end


validates :fName, :lName, :address, presence: true,
                    length: { minimum: 5 }
end
