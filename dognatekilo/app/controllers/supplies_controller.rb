class SuppliesController < ApplicationController
	def index
		
	end

	def new
		@supply = current_user.supplies.new
	end

	def create
		@supply = current_user.supplies.new(supply_params)
		puts @supply
		if @supply.save
			redirect_to root_url
		else
			render :action => "new"
		end
	end

	def edit
		@supply = Supply.find(params[:id])
		@categories = Category.all
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
		#if params[:supply].present?
  			params.permit(:name,:description,:condition,:quantity, :category_id, :photo)
		#end
	end
end
