class QuestionsController < ApplicationController

	def index
		@questions = Question.all
	end

	def new 
		@questions = Question.where(exit_ticket_id: params[:exit_ticket_id])
		@new_question = Question.new
		@exit_ticket = ExitTicket.find(params[:exit_ticket_id])
	end

	def create
		@exit_ticket = ExitTicket.find(params[:exit_ticket_id])
		@question = Question.create({
			exit_ticket_id: params[:exit_ticket_id],
			question: params[:question]
			})
		render :new 
		return
	end

	def show
		@question = Question.find(params[:id])
	end

	def destroy 
		question = Question.find(params[:id]).destroy
			redirect_to questions_path
	end

end