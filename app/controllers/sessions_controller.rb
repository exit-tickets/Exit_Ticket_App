class SessionsController < ApplicationController

	def new 
	end


	# def create
	# 	if params[:role] == "instructor"
	# 		instructor = Instructor.find_by(email: params[:email])
	# 	elsif params[:role] == "student"
	# 		student = Student.find_by(email: params[:email])
	# 	else
	# 		producer = Producer.find_by(email: params[:email])
	# 	end

	# 	if instructor && instructor.authenticate(params[:password]) 
	# 		session[:user_id] = instructor.id
	# 		redirect_to "/instructors/#{instructor.id}"
	# 	elsif student && student.authenticate(params[:password])
	# 		session[:user_id] = student.id 
	# 		redirect_to "/"
	# 	elsif producer && producer.authenticate(params[:password])
	# 		session[:user_id] = producer.id 
	# 		redirect_to "/"
	# 	else
	# 		render :new
	# 	end
	# end

	def create_instructor
		instructor = Instructor.find_by({email: params[:email]})
		if instructor && instructor.authenticate(params[:password])
			session[:user_id] = instructor.id
			redirect_to "/instructors/#{instructor.id}"
		else 
			render :new
		end
	end

	def create_student
		student = Student.find_by({email: params[:email]})
		if student && student.authenticate(params[:password])
			session[:user_id] = student.id
			redirect_to "/"
		else 
			render :new
		end
	end


	def create_producer
		producer = Producer.find_by({email: params[:email]})
		if producer && producer.authenticate(params[:password])
			session[:user_id] = producer.id
			redirect_to "/"
		else 
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/login'
	end
end