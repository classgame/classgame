class WelcomesController < ApplicationController
  def index
  	@categories = Category.all
  	@user = User.find(1,2,3)
  end
end
