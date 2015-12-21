class UserMailer < ApplicationMailer
	default from: "exitTicketTaker@gmail.com"

	def welcome_email(student)
		@student = student
		mail(to: @student.email, subject: "Thanks for signing up!!")
	end

	def exit_ticket_email(student)
		@student = student
		@url = "/exit_tickets/<%=@exit_ticket.id%>/responses/new"
		mail(to: @student.email, subject: "Hurry up Dummy!")
	end
end

