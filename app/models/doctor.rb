class Doctor < ActiveRecord::Base
	validates_length_of :name,  maximum: 35 
	validates_length_of :zip, :maximum => 5
	validates_inclusion_of :years_in_practice, :in => 1..100
end
