class Transaction < ActiveRecord::Base
  attr_accessible :transaction_date, :customer_id, :product_id
  belongs_to :customer
  has_many :products
 #validation 
  validates_presence_of :customer_id, :product_id
end
