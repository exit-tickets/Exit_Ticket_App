class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_instructor
    @current_instructor ||= Instructor.find(session[:instructor_id]) if session[:instructor_id]
  end

  helper_method :current_instructor

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  helper_method :current_student

  def current_producer
    @current_producer ||= Producer.find(session[:producer_id]) if session[:producer_id]
  end

  helper_method :current_producer

end
