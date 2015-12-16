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
	end

	def destroy
		cohort = Cohort.find(params[:id]).destroy
			redirect_to cohorts_path
	end
end