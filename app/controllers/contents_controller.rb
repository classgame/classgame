class ContentsController < ApplicationController	
	def management
		render_contents
	end

	def click
		position = params[:position].to_i
		set_current_content(position - 1) 
		redirect_to management_contents_path
	end

	def next
		set_current_content(session[:current_content].to_i + 1)
		redirect_to management_contents_path
	end

	def done
		redirect_to current_content.chapter.course, notice: "Parabéns você concluiu o chapter #{@@contents.first.chapter.title}!"
	end

	private
		def render_contents
			@partial_content = "contents/#{current_content.type.downcase}"
			@content = current_content
			@experience = current_experience
			render :management
		end  
end