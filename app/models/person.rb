class Person < ApplicationRecord
	has_one :garages, dependent: :destroy
	has_many :motor_cycles, through: :garages
	validates :name, presence: true, length: {maximum:45}
	validates_numericality_of :age, only_integer: true, greater_than: 0
	validates_numericality_of :money, greater_than_or_equal_to: 0
end

