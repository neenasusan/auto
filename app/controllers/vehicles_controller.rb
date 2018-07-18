class VehiclesController < ApplicationController

 	def index
    	@vehicles = Vehicle.all
  	end

  	def show
    	@vehicle = Vehicle.find(params[:id])
  	end

	def new

	end	

	def edit
  		@vehicle = Vehicle.find(params[:id])
	end

	def create

		@vehicle = Vehicle.new(vehicle_params)
  		@vehicle.save
  		redirect_to @vehicle
		
	end
 

	def update
  		@vehicle = Vehicle.find(params[:id])
 
  		if @vehicle.update(vehicle_params)
    		redirect_to @vehicle
  		else
    	render 'edit'
  		end
	end
	

	def destroy
  		@vehicle = Vehicle.find(params[:id])
  		@vehicle.destroy
 
  		redirect_to vehicles_path
	end

	private
  	
  	def vehicle_params
    	params.require(:vehicle).permit(:licenceNum, :vehicleModel, :vehicleType, :modelYear, :odoReading)
    end

	

end


