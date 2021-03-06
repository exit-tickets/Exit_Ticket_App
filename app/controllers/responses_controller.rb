class ResponsesController < ApplicationController
	
	def index
		@exit_ticket = ExitTicket.find(params[:exit_ticket_id])
		@responses = Response.where(exit_ticket_id: params[:exit_ticket_id])
		# @student = Student.find(params[:student_id])
		# @responses = Response.where(student_id: params[:student_id])
	end

	def show 
		@student = Student.find(params[:student_id])
		@response = Response.find(params[:id])
		@exit_ticket = ExitTicket.find(@response.exit_ticket_id)
		@responses = Response.where(exit_ticket_id: @exit_ticket.id)
	end

	def new 
		@exit_ticket = ExitTicket.find_by(id: params[:exit_ticket_id])
		@questions = Question.where(exit_ticket_id: params[:exit_ticket_id])
		@responses = Response.where(exit_ticket_id: params[:exit_ticket_id])
		@cohort = @exit_ticket.cohort
		@student = Student.find(session[:student_id]) if current_student
	end

	def create
		@response = Response.create({
			response: params[:response], 
			exit_ticket_id: params[:exit_ticket_id], 
			question_id: params[:question_id],
			student_id: current_student.id
			})
		@exit_ticket = ExitTicket.find(params[:exit_ticket_id])
		redirect_to new_exit_ticket_response_path(@exit_ticket)
	end


end
