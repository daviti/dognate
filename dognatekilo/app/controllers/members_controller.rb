class MembersController < ApplicationController
  def index
  	if user_signed_in?
  		session[:id] = current_user.id
  	end
  	@supplies = Supply.all
    @categories = Category.all
  end

  def terms
  end

  def privacy
  end
  
end
