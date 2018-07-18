class Vehicle < ApplicationRecord

	has_many :maintenances, dependent: :destroy
    validates :licenceNum, presence: true,
                    length: { minimum: 5 }
end
