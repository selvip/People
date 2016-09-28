class GaragesController < ApplicationController
	before_filter :get_person

	def new
		@garage = Garage.new
	end

	def create
		@garage = Garage.new(garage_params)
		@garage.person_id = @person.id
		if @garage.save
			redirect_to(person_path(@person))
		else
			render 'new'
		end
	end

	def destroy
		@garage = Garage.find(params[:id])
		@garage.destroy
		flash[:notice] = "MotorCycle removed."
		redirect_to person_path(@person)
	end

	private
	def garage_params
		params.require(:garage).permit(:motor_cycle_id)
	end

	def get_person
		@person = Person.find(params[:person_id])
	end
end