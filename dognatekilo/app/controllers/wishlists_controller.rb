class WishlistsController < ApplicationController
		def create
			@wishlist = Wishlist.new(wish_params)
		if @wishlist.save
			redirect_to root_url
		else
			render :action => "new"
		end

		private
		def wish_params
			params.require(:wishlist).permit(:title,:description)
		end

end
