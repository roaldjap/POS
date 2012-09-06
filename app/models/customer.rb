class Customer < ActiveRecord::Base
  attr_accessible :birthdate, :gender, :name
  has_many :transaction
end
