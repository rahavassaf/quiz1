class VisitorsController < ApplicationController

	def index
		Visitor.create(ip: anonymize(request.remote_ip))
		@visitors = Visitor.all
	end

	private

	def anonymize ip
		'***...' + ip[4..(ip.length)]
	end
end
