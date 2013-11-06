# == Schema Information
#
# Table name: admins
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password        :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  remember_token  :string(255)
#

require 'spec_helper'

describe Admin do
  pending "add some examples to (or delete) #{__FILE__}"
end
