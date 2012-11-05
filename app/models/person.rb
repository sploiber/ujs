class Person < ActiveRecord::Base
  attr_accessible :admin, :name
  has_many :cats
end
