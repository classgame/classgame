module CoursesHelper
	def user_registered(course)
		if current_user
			current_user.courses.find_by_id(course.id)
		end
	end
end
