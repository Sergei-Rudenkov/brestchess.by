class Student < ActiveRecord::Base
  attr_accessible :description, :name, :rating
end
