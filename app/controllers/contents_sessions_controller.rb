class ContentsSessionsController < ApplicationController
	
	def create
		if params[:chapter_id]
			session[:contents] = Chapter.find(params[:chapter_id]).contents.pluck(:id)
			session[:current_content] = 0
			session[:current_experience] = 0
			redirect_to management_contents_path
		end
	end
	
	def destroy
		session[:contents] = nil
		session[:current_content] = nil
		session[:current_experience] = nil
	end
end
