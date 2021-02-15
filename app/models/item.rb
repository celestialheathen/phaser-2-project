class Item < ApplicationRecord
    has_many :reviews 
    has_many :customers, through: :reviews 

    has_many :purchases 
    has_many :carts, through: :purchases
end
