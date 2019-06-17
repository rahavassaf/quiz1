class RectanglesController < ApplicationController
	def index
		@rectangles = Rectangle.all
	end

	def new
		@rectangle = Rectangle.new
	end

	def create
		@rectangle = Rectangle.create(rectangle_params)

		if @rectangle.invalid?
			render :new, status: :unprocessable_entity
		else
			redirect_to rectangles_path
		end
	end

	
	private


	def rectangle_params
    	params.require(:rectangle).permit(:width, :height, :color)
	end
end
