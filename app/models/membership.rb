# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  stream_id  :integer
#  status     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Membership < ActiveRecord::Base
  attr_accessible :status, :stream_id, :user_id

  belongs_to :user
  belongs_to :stream
end
