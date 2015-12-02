class Schedule < ActiveRecord::Base

	validates :date, presence: true
	validates :pet, presence: true
	validates :customer, presence: true
	validates :reason_for_visit, presence: true
end
