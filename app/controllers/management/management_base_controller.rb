class Management::ManagementBaseController < ApplicationController

  respond_to :html

  protect_from_forgery :with => :exception
  before_action :authenticate_user!

  def respond_with_index(object, location)
    respond_with object, location: location
  end

end
