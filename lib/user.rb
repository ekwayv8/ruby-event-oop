require "PRY"


class User

	attr_accessor :email, :age

	@@user_count = 0
	@@all_users = []

	def initialize(email_to_save,age_to_save)
		@email = email_to_save
		@age = age_to_save
		@@user_count = @@user_count + 1

	end

	def self.all
		return @@all_users	
	end

end

binding.pry