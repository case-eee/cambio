class User < ActiveRecord::Base
  has_many :lists
  has_many :comments
end
