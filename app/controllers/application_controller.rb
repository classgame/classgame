class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  helper_method :contents
  
	def contents
		@contents = session[:contents]
	end

	def require_content
 		redirect_to '/categories', notice: "Você já concluiu esse capítulo" unless contents
  end

	def current_content
  	id_current_content = contents.select{|c| c["position"] == session[:current_content]}.first["id"]
  	@content = Content.find(id_current_content)
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
