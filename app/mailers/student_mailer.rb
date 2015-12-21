class StudentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.student_mailer.new_mailer.subject
  #
  def new_student
    @student = Student.all  
    @greeting = "Hi"

    mail to: @student.email, subject: "Attention, ActionMailer sucks!"	

  end
end
