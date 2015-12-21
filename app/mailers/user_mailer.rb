class UserMailer < ApplicationMailer
	default from: "exitTicketTaker@gmail.com"

	def welcome_email(student)
		@student = student
		mail(to: @student.email, subject: "fuck this")
	end
end

