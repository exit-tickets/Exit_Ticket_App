class QuestionsController < ApplicationController

	def index
		@questions = Question.where(exit_ticket_id: params[:exit_ticket_id])
	end

	def new 
		@questions = Question.where(exit_ticket_id: params[:exit_ticket_id])
		@new_question = Question.new
		@exit_ticket = ExitTicket.find(params[:exit_ticket_id])
		@instructor = @exit_ticket.instructor
		@cohort = @exit_ticket.cohort
	end

	def create
		@exit_ticket = ExitTicket.find(params[:exit_ticket_id])
		@question = Question.create({
			exit_ticket_id: params[:exit_ticket_id],
			question: params[:question]
			})
		redirect_to new_exit_ticket_question_path(@exit_ticket)
	end


	def show
		@question = Question.find(params[:id])
	end

	def destroy 
		question = Question.find(params[:id]).destroy
		redirect_to questions_path
	end

end