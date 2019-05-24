class VisitorsController < ApplicationController

	def index
		Visitor.create(ip: request.remote_ip)
		@visitors = Visitor.all
	end
end
