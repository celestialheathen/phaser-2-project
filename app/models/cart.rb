class Cart < ApplicationRecord
  belongs_to :customer

  has_many :purchases 
  has_many :items, through: :purchases
end
