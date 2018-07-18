class VehiclesController < ApplicationController

 

	def new

	end	


	def edit
  		@vehicle = Vehicle.find(params[:id])
	end
 

	def show
    	@vehicle = Vehicle.find(params[:id])
  	end


  	def index
    	@vehicles = Vehicle.all
  	end


	def update
  		@vehicle = Vehicle.find(params[:id])
 
  		if @vehicle.update(vehicle_params)
    		redirect_to @vehicle
  		else
    	render 'edit'
  		end
	end


	def create

		@vehicle = Vehicle.new(vehicle_params)
  		@vehicle.save
  		redirect_to @vehicle
		
	end

	def destroy
  		@vehicle = Vehicle.find(params[:id])
  		@vehicle.destroy
 
  		redirect_to vehicles_path
	end

	private
  	
  	def vehicle_params
    	params.require(:vehicle).permit(:title, :text)
    end

	

end


