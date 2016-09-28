class MotorCyclesController < ApplicationController


	def index
		@motor_cycles = MotorCycle.all
	end

	def new
		@motor_cycle = MotorCycle.new
	end

	def create
		@motor_cycle = MotorCycle.new(motor_cycle_params)
		@motor_cycle.distance = 0
		@motor_cycle.time = 0
		if @motor_cycle.save
			redirect_to(motor_cycle_path(@motor_cycle))
		else
			render 'new'
		end
	end

	def edit
		@motor_cycle = MotorCycle.find(params[:id])
	end

	def update
		@motor_cycle = MotorCycle.find(params[:id])
		@motor_cycle.update_attributes(motor_cycle_params)
		if @motor_cycle.valid?
			@motor_cycle.save
			redirect_to @motor_cycle
		else
			render 'edit'
		end
	end

	def show
		@motor_cycle = MotorCycle.find(params[:id])
	end

	def destroy
		@motor_cycle = MotorCycle.find(params[:id])
		name = @motor_cycle.name
		@motor_cycle.destroy
		flash[:notice] = "#{name} removed."
		redirect_to motor_cycles_path
	end
	
	private
	def motor_cycle_params
		params.require(:motor_cycle).permit(:name, 
																				:velocity, 
																				:max_capacity_fuel, 
																				:current_fuel)
	end

end