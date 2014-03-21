class WishlistsController < ApplicationController
		def new
			@wishlist = current_user.wishlists.new
		end

		def create
			@wishlist = current_user.wishlists.new(wish_params)
			if @wishlist.save
				redirect_to root_url
			else
				render :action => "new"
			end
		end
		def show
			
		end


	private
		def wish_params
			params.permit(:title, :description, :photo)
		end

end
