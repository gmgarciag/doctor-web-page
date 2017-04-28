class User < ApplicationRecord
	has_many :scheduled_hours
	def self.exist_user(rut):
		User.find_by(rut: rut)
	end
end
