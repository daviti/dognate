class SuppliesController < ApplicationController
	def index
		
	end

	def new
		@supply = Supply.new
	end

	def create
		@supply = Supply.new(supply_params)
		if @supply.save
			redirect_to root_url
		else
			render :action => "new"
		end
	end

	def edit
		@supply = Supply.find(params[:id])
	end

	def update
		@supply = Supply.find(params[:id])
		@supply.update_attributes(supply_params)
		redirect_to root_url	
	end

	def destroy
		Supply.find(params[:id]).destroy
		redirect_to root_url
	end

	private
	def supply_params
  		params.require(:supply).permit(:name,:description,:condition,:quantity)
	end
end
