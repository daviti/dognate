class WishlistsController < ApplicationController
		def create
			@supply = Supply.new(supply_params)
		if @supply.save
			redirect_to root_url
		else
			render :action => "new"
		end
end
