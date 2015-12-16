class QuestionsController < ApplicationController

	def index
		@questions = Question.all
	end

	def new 
		@question = Question.new
	end

	def create
		@question = Question.create({
			exit_ticket_id: params[:exit_ticket_id],
			question: params[:question]
			})
		redirect_to questions_path
	end

	def show
		@question = Question.find(params[:id])
	end

	def destroy 
		question = Question.find(params[:id]).destroy
			redirect_to questions_path
	end

end