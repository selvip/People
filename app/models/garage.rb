class Garage < ApplicationRecord
	belongs_to :person
	has_many :motor_cycles
end
