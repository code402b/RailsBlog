class User < ActiveRecord::Base
	validates :username, uniqueness: true
	# user must input a unique username when creating a new user account
	
	has_many :posts
	has_many :comments
end
