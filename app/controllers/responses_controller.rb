class ResponsesController < ApplicationController
	
	def show 
	end

	def new 
		@questions = Question.where(exit_ticket_id: params[:exit_ticket_id])
		@exit_ticket = Question.find(:exit_ticket_id)
	end

	def create 
		@response = Response.create({
			question_id: params[:question_id],
			student_id: params[:student_id],
			response: params[:response]
			})
	end


end