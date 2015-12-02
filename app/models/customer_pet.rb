class CustomerPet < ActiveRecord::Base
	self.inheritance_column = nil
	validates_length_of :name,  maximum: 35 
	validates_inclusion_of :type, in: %w( dog cat bird ), message: "extension %{value} is not included in the list"
	validates :breed, presence: true
	validates :age, presence: true
	validates :weight, presence: true
	validates :date, presence: true
end
