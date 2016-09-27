class GaragesController < ApplicationController
	before_destroy :load_person

	def new
		@garage = Garage.new
	end

	def create
		@garage = Garage.new(params[:garage])
	end

	def destroy
		@garage = Garage.find(params[:id])
		@garage.destroy
		flash[:notice] = "MotorCycle removed."
		redirect_to person_path(@person)
	end

	private
	def load_person
		@person = Person.find_by_id(params[:person_id])
	end

end