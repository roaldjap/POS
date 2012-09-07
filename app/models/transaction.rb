class Transaction < ActiveRecord::Base
  attr_accessible :transaction_date
  belongs_to :customer
  has_many :products
 #validation 
  validates_presence_of :customer_id, :product_id
end
