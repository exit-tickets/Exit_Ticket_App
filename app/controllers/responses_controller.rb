class ResponsesController < ApplicationController
	
	def show 
	end

	def new 
		@exit_ticket = ExitTicket.find_by(id: params[:exit_ticket_id])
		@questions = Question.where(exit_ticket_id: params[:exit_ticket_id])
		@response = Response.new
		# @responses = Response.where(exit_ticket_id: params[:exit_ticket_id])
		# @student = Student.find(session[:user_id]) if current_student
	end

	def create 
		# binding.pry
		# @responses = Response.where(exit_ticket_id: params[:exit_ticket_id])
		# @responses.each do |response|
		# 	response = Response.create({
		# 		question_id: params[:question_id],
				# student_id: params[:student_id],
		# 		exit_ticket_id: params[:exit_ticket_id],
		# 		response: params[:response]
		# 	})
		# end

		@response = Response.create({
			response: params[:response], 
			exit_ticket_id: params[:exit_ticket_id], 
			question_id: params[:question_id]
			})
		@exit_ticket = ExitTicket.find(params[:exit_ticket_id])
		redirect_to new_exit_ticket_response_path(@exit_ticket)
	end


end