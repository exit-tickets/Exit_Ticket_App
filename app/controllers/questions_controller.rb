class QuestionsController < ApplicationController

	def index
		@questions = Question.where(exit_ticket_id: params[:exit_ticket_id])
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
		redirect_to new_exit_ticket_question_path(@exit_ticket)
	end

	def send_email
			instructor = Instructor.find(session[:instructor_id]) if current_instructor
			exit_ticket = ExitTicket.find(params[:exit_ticket_id])
			cohort = exit_ticket.cohort
			@students = Student.where(cohort_id: cohort.id)

			UserMailer.exit_ticket_email(@students).deliver
			format.html {redirect_to instructor_cohort_path}

	end


	def show
		@question = Question.find(params[:id])
	end

	def destroy 
		question = Question.find(params[:id]).destroy
		redirect_to questions_path
	end

end