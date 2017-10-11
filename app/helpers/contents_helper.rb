module ContentsHelper
	def get_progress_percentage(user, course)
  	chapters = course.chapters.pluck(:id)
    contents_completed = user.contents.where(chapter:chapters).distinct.count
    contents = Content.where(chapter:chapters).count
    progress_percentage = contents_completed.to_f / contents.to_f * 100
    progress_percentage
  end

  def get_color_of_progress(user, course)
  	get_progress_percentage(user, course) == 100 ? "done" : nil
	end

  def get_color_of_alternative(alternative)
  end    

  def get_color_of_check(content, user)
    content.users.include?(current_user) ? "color:#59bc69" : "color:#999999"
  end
end
