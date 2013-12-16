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
#

class Post < ActiveRecord::Base
  attr_accessible :stream_id, :title, :message, :url
  #need to change title to message
  has_many_tags
end
