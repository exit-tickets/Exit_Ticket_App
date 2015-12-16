class ProducersController < ApplicationController

	def new
		@producer = Producer.new
	end

	def create
		@producer = Producer.create({
			first_name: params[:first_name],
			last_name: params[:last_name],
			email: params[:email],
			password: params[:password],
			password_confirmation: params[:password_confirmation]
			})
		if @producer.save
			redirect_to login_path
		else
			render :new
		end

end