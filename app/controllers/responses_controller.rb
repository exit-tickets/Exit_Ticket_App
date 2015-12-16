class ResponsesController < ApplicationController

	def index
		@responses = Response.all
	end

	def new 
		@response = Response.new
	end

	def create 
		@response = Response.create({
			question_id: params[:question_id],
			student_id: params[:student_id],
			response: params[:response]
			})
	end

	def show 
		@respone = Response.find(params[:id])
	end

end