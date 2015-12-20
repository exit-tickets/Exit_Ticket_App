class StudentsController < ApplicationController

	def new 
		@student = Student.new
	end

	def create 
		@student = Student.new({
			first_name: params[:first_name],
			last_name: params[:last_name],
			email: params[:email],
			password: params[:password],
			password_confirmation: params[:password_confirmation]
			})
		
		respond_to do |format|
			if @student.save
				UserMailer.welcome_email(@student).deliver
				format.html {redirect_to login_path}
			else
				render :new
			end
		end
	end

end