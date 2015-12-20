class SampleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sample_mailer.new_mail.subject
  #
  def new_mail
    @greeting = "Greetings!!"

    mail to: @student.email, resubject: "ActionMailer kinda sucks"
  end
end
