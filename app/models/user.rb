class User < ActiveRecord::Base
  has_many :shelters
  has_many :animals, through: :shelters
  has_secure_password
  
end