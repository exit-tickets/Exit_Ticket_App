class SessionsController < ApplicationController

	def new 
	end

	def create
		instructor = Instructor.find_by({email: params[:email]})
		if instructor && instructor.authenticate(params[:password])
			session[:instructor_id] = instructor.id
			redirect_to instructors_path
		else 
			render :new
		end

		student = Student.find_by({email: params[:email]})
		if student && student.authenticate(params[:password])
			session[:student_id] = student.id
			redirect_to students_path
		else 
			render :new
		end

		producer = Producer.find_by({email: params[:email]})
		if producer && producer.authenticate(params[:password])
			session[:producer_id] = producer.id
			redirect_to producers_path
		else 
			render :new
		end
	end

	def destroy
		if session[:instructor_id]
			session[:instructor_id] = nil
		elsif session[:student_id]
			session[:student_id] = nil
		else
			session[:producer_id] = nil
		end
		redirect_to '/login'
	end
end