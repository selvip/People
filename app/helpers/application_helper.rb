module ApplicationHelper

	def list_garages
		Garage.all
	end

	def list_motors
		MotorCycle.all
	end

	def find_motor(motor_id)
		MotorCycle.find(motor_id)
	end

	def list_motor_own(person_id)
		list_garages.select{ |garage| garage.person_id == person_id }
	end

	def find_no_owner_motor
		motor_id_garages = list_garages.map{ |garage| garage.motor_cycle_id }
		motor_id_motorcycles = list_motors.map{ |motor| motor.id }
		motors_id = motor_id_motorcycles - motor_id_garages
		motors_id.map { |motor_id| find_motor(motor_id) }
	end

end
