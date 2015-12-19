class ResponsesController < ApplicationController
	
	def show 
	end

	def new 
		@questions = Question.where(exit_ticket_id: params[:exit_ticket_id])
		@exit_ticket = ExitTicket.find_by(id: params[:exit_ticket_id])
		@student = Student.find(session[:user_id]) if session[:user_id]
	end

	def create 
		@responses = Response.where(exit_ticket_id: params[:exit_ticket_id])
		@responses.each do |response|
			response = Response.create({
				question_id: params[:question_id],
				student_id: params[:student_id],
				exit_ticket_id: params[:exit_ticket_id],
				response: params[:response]
			})
		end
		@exit_ticket = ExitTicket.find(:exit_ticket_id)
		redirect_to :new
	end


end