class CoursesController < ApplicationController
	def new
		@course = Course.new
	end

	def create
		if @course = Course.create(params[:course])
	    	redirect_to course_path(@course) 
			flash[:success] = "Course successfully created."
		else
			flash[:error] = "Error saving course. Check that all forms are complete."
		end
	end

	def show
		@course = Course.find_by_id(params[:id])
	end
end
