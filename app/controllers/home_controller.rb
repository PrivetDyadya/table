class HomeController < ApplicationController

	def index
		if user_signed_in?
			redirect_to :controller => 'todos', :actioon => 'index'
		end

	end

end
