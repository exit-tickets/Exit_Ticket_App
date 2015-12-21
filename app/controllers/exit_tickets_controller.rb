class ExitTicketsController < ApplicationController

	def index
		@exit_tickets = ExitTicket.all
	end

	def show
		@exit_ticket = ExitTicket.find(params[:exit_ticket_id])
		@questions = Question.where(exit_ticket_id: params[:exit_ticket_id])
		@responses = Response.where(exit_ticket_id: param[:exit_ticket_id])
		@instructor = Instructor.find(@exit_ticket.instructor_id)
		@cohort = Cohort.find(@exit_ticket.cohort_id)
	end

	def new
		@exit_ticket = ExitTicket.new
		@instructor = Instructor.find(params[:instructor_id])
		@cohort = Cohort.find(params[:cohort_id])
	end

	def create
		@instructor = Instructor.find(params[:instructor_id])
		@cohort = Cohort.find(params[:cohort_id])
		@exit_ticket = ExitTicket.create({
			date: params[:date],
			instructor_id: params[:instructor_id],
			cohort_id: params[:cohort_id]
			})                         
		redirect_to "/exit_tickets/#{@exit_ticket.id}/questions/new"
	end

	def send_email
		instructor = Instructor.find(session[:instructor_id]) if current_instructor
		exit_ticket = ExitTicket.find(params[:exit_ticket_id])
		cohort = exit_ticket.cohort
		@students = Student.where(cohort_id: cohort.id)

		UserMailer.exit_ticket_email(@students).deliver
		format.html {redirect_to instructor_cohort_path}
	end


	def destroy
		exit_ticket = ExitTicket.find(params[:id]).destroy
		redirect_to exit_tickets_path
	end
end