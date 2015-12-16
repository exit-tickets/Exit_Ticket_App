class StudentsController < ApplicationController

	def new 
		@student = Student.new
	end

	def create 
		@student = Student.create({
			first_name: params[:first_name],
			last_name: params[:last_name],
			email: params[:email],
			password: params[:password],
			password_confirmation: params[:password_confirmation]
			})
		if @student.save
			redirect_to login_path
		else
			render :new
		end
	end

	

end