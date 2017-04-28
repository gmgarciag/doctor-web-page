class AvailableDate < ApplicationRecord
	has_many :scheduled_hours
	has_many :restricted_schedules
end
