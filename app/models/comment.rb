class Comment < ActiveRecord::Base
  attr_accessible :body, :discussion_id
  validates_presence_of :body
  belongs_to :discussion
end