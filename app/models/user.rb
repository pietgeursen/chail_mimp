class User < ActiveRecord::Base
  attr_accessor :username
  has_secure_password
  validates_presence_of :username
  has_one :list
end

