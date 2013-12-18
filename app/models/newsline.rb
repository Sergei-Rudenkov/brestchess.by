# == Schema Information
#
# Table name: newslines
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Newsline < ActiveRecord::Base
default_scope order('id ASC')
  attr_accessible :content, :description, :title
end
