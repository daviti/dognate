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
			format.json { render json: @supply.errors, status: :unprocessable_entity }
			redirect_to root_url
		end
	end

	def edit
		@supply = Supply.find(params[:id])
		@categories = Category.all
	end

	def update
		#render text: params
		Supply.find(params[:id]).update_attributes(supply_params)
		redirect_to root_url	
	end

	def destroy
		Supply.find(params[:id]).destroy
		redirect_to root_url
	end

	private
	def supply_params
		#if params[:supply].present?
  			params.require(:supply).permit(:name,:description,:condition,:quantity, :category_id, :photo)
		#end
	end
end
