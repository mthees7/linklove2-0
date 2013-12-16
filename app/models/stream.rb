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
  attr_accessible :user_id, :name, :image
  has_and_belongs_to_many :users
  has_many :posts
  has_many :statuses

  validate :users_cannot_be_greater_than_two

  def users_cannot_be_greater_than_two
    if user.count > 2
      errors.add(:users, "can't be greater than two")
    end
  end

end
