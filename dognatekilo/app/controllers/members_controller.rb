class MembersController < ApplicationController
  def index
  	if user_signed_in?
  		session[:id] = current_user.id
      @user = current_user
      @supply = current_user.supplies.new
      @wishlist = current_user.wishlists.new
  	end
  	@supplies = Supply.all
    @categories = Category.all
    @wishlists = Wishlist.all
  end

  def terms
  end

  def privacy
  end
  
end
