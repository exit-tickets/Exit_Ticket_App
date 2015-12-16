class InstructorsController < ApplicationController

	def new
		@instructor = Instructor.new
	end

	def create
		@instructor = Instructor.create({
			first_name: params[:first_name],
			last_name: params[:last_name],
			email: params[:email],
			password: params[:password],
			password_confirmation: params[:password_confirmation]
			})
		if @instructor.save
			redirect_to login_path
		else
			render :new
		end
	end

	def show 
		@instructor = Instructor.find(params[:id])
	end
end