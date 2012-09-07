class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price
  belongs_to :transaction

 #validation 
  validates_presence_of :description, :name, :price
  validates :name, :uniqueness => true, :length => { :minimum => 8}
end
