class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?

  helper_method :contents, :sidebar_toggle

  def sidebar_toggle params = {}
    session[:sidebar_toggle] = params[:status] unless params.empty?
    session[:sidebar_toggle] ||= 0  
    session[:sidebar_toggle] 
  end

	def contents
		@contents = Content.order(:position).find(session[:contents])
	end

	def require_content
 		redirect_to categories_path, notice: "Você já concluiu esse capítulo" unless contents
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

	protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :cpf, :avatar])
  end

end
