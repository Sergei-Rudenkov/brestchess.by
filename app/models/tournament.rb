# == Schema Information
#
# Table name: tournaments
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#

class Tournament < ActiveRecord::Base
default_scope order('id ASC')
  attr_accessible :content, :title, :description
end
