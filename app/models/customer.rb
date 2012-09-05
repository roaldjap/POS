class Customer < ActiveRecord::Base
  attr_accessible :birthdate, :gender, :name
end
