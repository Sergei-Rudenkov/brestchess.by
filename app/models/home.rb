# == Schema Information
#
# Table name: homes
#
#  id         :integer          not null, primary key
#  h1         :string(255)
#  h2         :string(255)
#  button     :string(255)
#  img        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Home < ActiveRecord::Base
  attr_accessible :button, :h1, :h2, :img
end
