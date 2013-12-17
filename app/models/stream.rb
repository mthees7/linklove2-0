# == Schema Information
#
# Table name: streams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stream < ActiveRecord::Base
  attr_accessible :name, :image #, :invited_user
  has_many :posts
  has_many :memberships
  has_many :users, through: :memberships

  validate :users_cannot_be_greater_than_two
  mount_uploader :image, ImageUploader

  def users_cannot_be_greater_than_two
    if users.size > 2
      errors.add(:users, "can't be greater than two")
    end
  end

  def invited_user
    @invited_user
  end

  def invite_user=(email)
    @invited_user = email
  end

end
