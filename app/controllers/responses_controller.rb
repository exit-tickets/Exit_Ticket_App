class ResponsesController < ApplicationController
	
	def show 
	end

	def new 
		@exit_ticket = ExitTicket.find_by(id: params[:exit_ticket_id])
		@questions = Question.where(exit_ticket_id: params[:exit_ticket_id])
		@responses = Response.where(exit_ticket_id: params[:exit_ticket_id])

		@questions.ordered.each do |question|
			if Response.find_by(question_id: question.id)
				@response = Response.find_by(question_id: question.id)
			else
				@question = question.question
				@response = Response.new
			end
		end
		# @responses = Response.where(exit_ticket_id: params[:exit_ticket_id])
		# @student = Student.find(session[:user_id]) if current_student
	end

	def create
		@response = Response.create({
			response: params[:response], 
			exit_ticket_id: params[:exit_ticket_id], 
			question_id: params[:question_id]
			})
		@exit_ticket = ExitTicket.find(params[:exit_ticket_id])
		redirect_to new_exit_ticket_response_path(@exit_ticket)
	end


end