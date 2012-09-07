class Customer < ActiveRecord::Base
  attr_accessible :birthdate, :gender, :name
  has_many :transaction

 #validation
  validates_presence_of :birthdate, :gender
  validates :name, :uniqueness => true, :length => {:minimum => 5}

end
