# == Schema Information
#
# Table name: streams
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string(255)
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stream < ActiveRecord::Base
  attr_accessible: :name, :image
  has_many :posts
  has_many :memberships
  has_many :users, through: :memberships

  validate :users_cannot_be_greater_than_two

  def users_cannot_be_greater_than_two
    if users.size > 2
      errors.add(:users, "can't be greater than two")
    end
  end

end
