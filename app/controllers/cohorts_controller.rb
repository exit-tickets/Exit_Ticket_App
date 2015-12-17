class CohortsController < ApplicationController

	def index
		@cohorts = Cohort.all
	end

	def new
		@cohort = Cohort.new
	end

	def create
		@cohort = Cohort.create({
			instructor_id: params[:instructor_id],
			name: params[:name]
			})
		redirect_to cohorts_path
	end

	def show
		@cohort = Cohort.find(params[:id])
		@students = @cohort.students
		@instructors = @cohort.instructors
		@producers = @cohort.producers
      erb :show_category
	end

	def destroy
		cohort = Cohort.find(params[:id]).destroy
			redirect_to cohorts_path
	end
end