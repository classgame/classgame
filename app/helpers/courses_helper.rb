module CoursesHelper
	def user_registered(course)
		current_user.courses.find_by_id(course.id)
	end
end
