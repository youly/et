class HomeController < ApplicationController
  def index
  	if !signed_in?
  		redirect_to '/signin'
  	end
  end
end
