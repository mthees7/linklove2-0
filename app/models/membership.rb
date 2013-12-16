class Membership < ActiveRecord::Base
  attr_accessible :status, :stream_id, :user_id

  belongs_to :user
  belongs_to :stream
end
