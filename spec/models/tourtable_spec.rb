# == Schema Information
#
# Table name: tourtables
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  waitresult :string(255)
#  result     :string(255)
#  tournament :string(255)
#  city       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Tourtable do
  pending "add some examples to (or delete) #{__FILE__}"
end
