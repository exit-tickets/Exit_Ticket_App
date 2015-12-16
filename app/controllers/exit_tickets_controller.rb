class ExitTicketsController < ApplicationController

	def index
		@exit_tickets = ExitTicket.all  
	end

	def new
		@exit_ticket = ExitTicket.new
	end

	def create
		@exit_ticket = ExitTicket.create({
			date: params[:date],
			instructor_id: params[:instructor_id],
			cohort_id: params[:cohort_id]
			})
	end

	def show
		@exit_ticket = ExitTicket.find(params[:id])
	end

	def destroy
		exit_ticket = ExitTicket.find(params[:id]).destroy
		redirect_to exit_tickets_path
	end
end