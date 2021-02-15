class Customer < ApplicationRecord
    has_secure_password

    has_many :reviews 
    has_many :items, through: :reviews 

    has_many :carts 
    has_many :purchases, through: :carts

end
