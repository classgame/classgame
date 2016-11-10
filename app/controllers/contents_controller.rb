class ContentsController < ApplicationController

	def start
		@chapter = Chapter.find(params[:chapter_id])
		@@contents = @chapter.all_contents
		@@current_content = 0
		redirect_to chapter_contents_management_path(@chapter)
		session[:current_points] = 0
	end
	
	def contents_management
		render_content
	end

	def click_content
		@@current_content = params[:content_position].to_i - 1
		@chapter = @@contents.first.chapter
		redirect_to chapter_contents_management_path(@chapter)
	end

	def next_content
		@@current_content += 1
		@chapter = @@contents.first.chapter
		redirect_to chapter_contents_management_path(@chapter)
	end

	def collect_score_content
		@attempt = Attempt.new
		performace = current_user.performace
    if params[:question]
      @attempt.final_experience_question( Alternative.where(id: content_params), current_user )
    	session[:current_points] += @attempt.experience 
    elsif params[:text]
      text = Text.find(params[:text][:id])
      performace.update_attributes( total_experience: performace.total_experience + text.experience )
    	session[:current_points] += text.experience
    else
      video = Video.find(params[:video][:id])
      performace.update_attributes( total_experience: performace.total_experience + video.experience )
    	session[:current_points] += video.experience
    end  

    if @attempt.save
      next_content
    end
	end
	
	private
		def render_content
			@partial_content = "contents/#{@@contents[@@current_content].class.table_name}"
			@content = @@contents[@@current_content]
			render :contents_management
		end  

		def content_params
      if params[:question]
        params[:question][:alternative_attributes] = params[:question][:alternative_attributes].map {|attrs| attrs.last } 
      end
      #params.require(:attempt).permit(:experience, :ending_time, :approved, :done)
      #params.require(:question)
    end
end