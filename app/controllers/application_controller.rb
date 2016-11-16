class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  helper_method :current_content, 
  							:current_experience,
  							:current_partial
  
	#[1,3,5,4] contents id array
	def contents
		@contents = session[:contents]
	end
  
  def current_content
  	@content = Content.find(contents[session[:current_content]])
  end

	def current_experience
		@current_experience = session[:current_experience]
	end

	def set_current_content(position)
		session[:current_content] = position
	end

	def set_current_experience(experience)
		session[:current_experience] += experience
	end  

end
