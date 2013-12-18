# == Schema Information
#
# Table name: students
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  rating      :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  birthday    :string(255)
#  achievement :string(255)
#

class Student < ActiveRecord::Base
default_scope order('id ASC')
  attr_accessible :description, :name, :rating, :birthday, :achievement 
end
