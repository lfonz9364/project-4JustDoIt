class Passenger < ApplicationRecord
  belongs_to :user
  belongs_to :car, optional: true
end
