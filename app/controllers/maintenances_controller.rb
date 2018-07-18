class MaintenancesController < ApplicationController
	def create
    	@vehicle = Vehicle.find(params[:vehicle_id])
    	@maintenance = @vehicle.maintenances.create(maintenance_params)
    	redirect_to vehicle_path(@vehicle)
  end


  def destroy
    @vehicle = Vehicle.find(params[:vehicle_id])
    @maintenance = @vehicle.maintenances.find(params[:id])
    @maintenance.destroy
    redirect_to vehicle_path(@vehicle)
  end
 
  private
    def maintenance_params
      params.require(:maintenance).permit(:maintenanceTask, :date)
    end
end





 
  