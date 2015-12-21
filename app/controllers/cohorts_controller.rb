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
<<<<<<< HEAD
		@weather = HTTParty.get("http://api.wunderground.com/api/#{wunderground_key}conditions/q/NY/New_York_City.json")
=======
		@weather = HTTParty.get('http://api.wunderground.com/api/f7c25337aea3b20c/conditions/q/NY/New_York_City.json')
>>>>>>> 701f0961c004b8566781a797ad66cbd4ea355c10
	end

	def destroy
		cohort = Cohort.find(params[:id]).destroy
			redirect_to cohorts_path
	end
end