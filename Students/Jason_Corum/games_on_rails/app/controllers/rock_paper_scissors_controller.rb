class RockPaperScissorsController < ApplicationController

	def new
	end
	
	def show
		@gesture = params[:id].to_i
		@opponent = rand(3) +1
	end

end