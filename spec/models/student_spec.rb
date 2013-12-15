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

require 'spec_helper'

describe Student do
  pending "add some examples to (or delete) #{__FILE__}"
end
