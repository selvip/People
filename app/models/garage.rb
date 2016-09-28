class Garage < ApplicationRecord
	belongs_to :person
	belongs_to :motor_cycle
	validates :motor_cycle_id, uniqueness: true
end
