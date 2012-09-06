class Transaction < ActiveRecord::Base
  attr_accessible :transaction_date
  belongs_to :customer
  has_many :products
end
