# frozen_string_literal: true
class Registry < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  after_create :amount_courses

  def amount_courses
  	user.performance.update_attributes(amount_courses: user.performance.amount_courses + 1)
  end
end
