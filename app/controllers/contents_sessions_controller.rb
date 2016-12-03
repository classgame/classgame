class ContentsSessionsController < ApplicationController
	
	def create
		if params[:chapter_id]
			session[:contents]           = Chapter.find(params[:chapter_id]).contents
			session[:chapter_id]         = params[:chapter_id]
			session[:current_content]    = 1
			session[:current_experience] = 0
			redirect_to management_contents_path
		end
	end
	
	def destroy
		@chapter = Chapter.find(session[:chapter_id])
		session[:contents]           = nil
		session[:current_content]    = nil
		session[:current_experience] = nil
		session[:chapter_id]         = nil
		redirect_to course_path(@chapter.course), notice: "Parabéns você terminou o capitulo #{@chapter.title}"
	end
end
