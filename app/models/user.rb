class User < ActiveRecord::Base
  validates_presence_of :username, :password
  has_many :discussions
  has_many :comments
end