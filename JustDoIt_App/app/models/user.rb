class User < ApplicationRecord
  has_secure_password
  has_one :car
  has_one :passenger
end
