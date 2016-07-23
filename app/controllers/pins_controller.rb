class PinsController < ApplicationController
	def index 
		


	end
	
	def create
		@pin = Pin.new(pin_params)
		@pin.save
		redirect_to :back
	end

	def destroy
		@pin = Pin.find(params[:id])
		@pin.destroy

		redirect_to :back
	end

	private
	
	def pin_params
		params.require(:pin).permit(:content, :trip_id , :latitude, :longitude, :address, :image)
	end
end
