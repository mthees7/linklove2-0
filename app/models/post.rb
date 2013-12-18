# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  stream_id  :integer
#  title      :string(255)
#  message    :text
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ActiveRecord::Base
  attr_accessible :stream_id, :title, :message, :url, :tag_list
  belongs_to :user
  acts_as_taggable
end
