class HomeController < ApplicationController

	def index
		if user_signed_in?
			redirect to :controller => 'todo', :actioon => 'index'
		end

	end

end
