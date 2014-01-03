# == Schema Information
#
# Table name: litras
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  shortdescript :string(255)
#  main          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Litra < ActiveRecord::Base
default_scope order('id ASC')
  attr_accessible :main, :title, :shortdescript
end
