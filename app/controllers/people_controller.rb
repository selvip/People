class PeopleController < ApplicationController

	def index
		@people = Person.all
	end

	def show
		@person = Person.find(params[:id])
	end

	def new
		@person = Person.new
	end

	def create
		@person = Person.new(person_params)
		@person.save
	end

	def edit
	end

	def create
	end

	def destroy
	end

	private
	def person_params
		params.require(:person).permit(:name, :age, :money)
	end

end