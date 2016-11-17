class ContentsController < ApplicationController	
	before_action :require_content
	
	def management
		render_contents
	end

	def click
		position = params[:position].to_i
		set_current_content(position) 
		redirect_to management_contents_path
	end

	def next
		position = set_current_content(session[:current_content].to_i + 1)
		if session[:current_content] <= contents.last["position"]
			redirect_to management_contents_path
		else
			done
		end
	end

	def done
		redirect_to contents_sessions_detroy_path
	end

	private
		def render_contents
			@partial_content = "contents/#{current_content.type.downcase}"
			@content         = current_content
			@experience      = current_experience
			render :management
		end  
end