class MotorCycle < ApplicationRecord
	has_many :garages, dependent: :destroy
	validates :name, presence: true, length: {maximum:45}
	validates_numericality_of :max_capacity_fuel, greater_than_or_equal_to: :current_fuel
	validates_numericality_of :current_fuel, less_than_or_equal_to: :max_capacity_fuel, greater_than: 0
	validates_numericality_of :velocity, greater_than_or_equal_to: 0
	validates_numericality_of :time, greater_than_or_equal_to: 0
	validates_numericality_of :distance, greater_than_or_equal_to: 0
end
