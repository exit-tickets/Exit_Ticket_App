class UserMailer < ApplicationMailer
	default from: "exitTicketTaker@gmail.com"

	def welcome_email(student)
		@student = student
		mail(to: @student.email, subject: "Thanks for signing up!!")
	end

	def exit_ticket_email(student, exit_ticket)
		@student = student
		@url = "https://safe-fortress-4071.herokuapp.com/exit_tickets/#{exit_ticket.id}/responses/new"
		mail(to: @student.email, subject: "Hurry up Dummy!")
	end
end

