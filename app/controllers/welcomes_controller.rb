class WelcomesController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  def index
  	@categories = Category.all
  	@user = User.find(1,2,3)
  end
end
