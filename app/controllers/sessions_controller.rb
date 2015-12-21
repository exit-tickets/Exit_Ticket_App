class SessionsController < ApplicationController

	def new 
	end


	def create
		if params[:role] == "instructor"
			instructor = Instructor.find_by(email: params[:email])
		elsif params[:role] == "student"
			student = Student.find_by(email: params[:email])
		else
			producer = Producer.find_by(email: params[:email])
		end

		if instructor && instructor.authenticate(params[:password]) 
			session[:instructor_id] = instructor.id
			redirect_to "/instructors/#{instructor.id}"
		elsif student && student.authenticate(params[:password])
			session[:student_id] = student.id 
			redirect_to "/cohorts/#{student.cohort.id}"
		elsif producer && producer.authenticate(params[:password])
			session[:producer_id] = producer.id 
			redirect_to "/"
		else
			render :new
		end
	end

	def destroy
		session[:instructor_id] = nil
		session[:student_id] = nil
		session[:producer_id] = nil
		redirect_to '/login'
	end
end