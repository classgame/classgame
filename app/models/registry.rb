class Registry < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  after_create :amount_courses

  def amount_courses
  	self.user.performace.update_attributes(amount_courses: self.user.performace.amount_courses + 1)
  end
end
