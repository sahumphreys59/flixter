class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :enrolled_in_lesson

	def show

	end

	private

	def enrolled_in_lesson
		unless current_user&.enrolled_in?(current_lesson.section.course) 
			redirect_to course_path, alert: 'You must enroll'
		end	
	end		

	helper_method :current_lesson
	def current_lesson
		@current_lesson ||= Lesson.find(params[:id])
	end		
end
