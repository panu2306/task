class PagesController < ApplicationController
	def new
	@page = Pages.find(params[:id])
	end

end
