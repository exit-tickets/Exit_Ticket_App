class CohortsController < ApplicationController

	def index
		@cohorts = Cohort.all
	end

	def new
		@cohort = Cohort.new
		@instructor = Instructor.find(params[:instructor_id])
	end

	def create
		@instructor = Instructor.find(params[:instructor_id])
		@cohort = Cohort.create({
			instructor_id: params[:instructor_id],
			name: params[:name]
			})
		redirect_to @instructor
	end

	def show
		@cohort = Cohort.find(params[:id])
		@students = @cohort.students
		@instructor = @cohort.instructor
		# @weather = HTTParty.get("http://www.wunderground.com/conditions?state=NY&city=New+York+City")
	end

	def destroy
		cohort = Cohort.find(params[:id]).destroy
			redirect_to cohorts_path
	end
end