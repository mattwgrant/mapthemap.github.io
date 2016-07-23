class TripsController < ApplicationController
		
	def index
		@trips = current_user.trips
		@pins = []
		@trips.each do |t|
			@pins << t.pins

			
		end

		@pins.flatten!
		@hash = Gmaps4rails.build_markers(@pins) do |pin, marker|
			marker.infowindow pin.address
	 		marker.lat pin.latitude
	  		marker.lng pin.longitude
	  		marker.json({ :id => pin.id })
	  		marker.picture({
	                  :url => pin.image(:thumb),
	                  :width   => 80,
	                  :height  => 80,
	                 });
	  		marker.title   "Read about what I did here!"
		end
		if @hash.empty?
	  		@hash.push({
	  			lat: 40.7128,
	  			lng: -74.0059,
	  			});
	  end	
	end
	
	def new
		if user_signed_in?
			@trip = current_user.trips.build
		end
	end

	def edit
		@trip = Trip.find(params[:id])
	end
	
	def create
		@trip = current_user.trips.build(trip_params)
		if @trip.save
		flash[:notice] = "Success!"
		redirect_to @trip

		else
			flash[:warning] = "Please enter a title for your trip"
			render 'new'

		end
	end

	def show
			@trip = Trip.find(params[:id])
			@pin = Pin.new
			@pins = Pin.where(trip_id: params[:id])
			@hash = Gmaps4rails.build_markers(@trip.pins) do |pin, marker|
			marker.infowindow pin.address
	 		marker.lat pin.latitude
	  		marker.lng pin.longitude
	  		marker.json({ :id => pin.id })
	  		marker.picture({
	                  :url => pin.image(:thumb),
	                  :width   => 50,
	                  :height  => 50,
	                 });
	  		marker.title   "Read about what I did here!"
	  		marker.infowindow "#{pin.address}<br><br>#{pin.content}<br><br><img src=#{pin.image(:medium)}>"
	  	end
	  	if @hash.empty?
	  		@hash.push({
	  			lat: 40.7128,
	  			lng: -74.0059,
	  			});
	  	end		
	end
	
	def update
		@trip = Trip.find(params[:id])
		if @trip.update(trip_params)
			redirect_to @trip
		end
	end
	
	def destroy
		@trip = Trip.find(params[:id])
		if @trip.destroy
			redirect_to trips_path
		flash[:notice] = 'The trip was removed'
		end

	end

	private

	def trip_params
		params.require(:trip).permit(:title)
	end

end
