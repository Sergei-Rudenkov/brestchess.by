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

require 'spec_helper'

describe Tournament do
  pending "add some examples to (or delete) #{__FILE__}"
end
