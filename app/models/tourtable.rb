class Tourtable < ActiveRecord::Base
default_scope order('id ASC')
  attr_accessible :city, :name, :result, :tournament, :waitresult
end
