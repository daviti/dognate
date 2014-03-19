class MembersController < ApplicationController
  def index
  	session[:id] = current_user.id
  	@supplies = Supply.all
  end

  def terms
  end

  def privacy
  end
  
end
