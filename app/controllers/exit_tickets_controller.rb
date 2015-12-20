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
		# redirect_to "/cohorts/#{@cohort.id}/exit_tickets/#{@exit_ticket.id}"                           
		redirect_to "/exit_tickets/#{@exit_ticket.id}/questions/new"                       
		# not sure where to redirect- can't seem to redirect somewhere with the exit ticket just created in the path
	end


	def destroy
		exit_ticket = ExitTicket.find(params[:id]).destroy
		redirect_to exit_tickets_path
	end
end


# @this_ticket = ExitTicket.find(params[:exit_ticket_id])

# "/exit_tickets/<%= @this_ticket.exit_ticket_id %>/questions/new"