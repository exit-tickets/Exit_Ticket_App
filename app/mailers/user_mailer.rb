class UserMailer < ApplicationMailer
	default from: "exitTicketTaker@gmail.com"

	def welcome_email(student)
		@student = student
		mail(to: @student.email, subject: "Thanks for signing up!!")
	end

	def exit_ticket_email(students)
		@students = students
		@url = '/exit_tickets/<%=@exit_ticket.id%>/responses/new'
		mail(to: @students.email, subject: "Hurry up Dummy!")
	end
end

