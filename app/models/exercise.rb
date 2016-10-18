class Exercise < ActiveRecord::Base

  has_one :attempt

  belongs_to :content
  has_many :questions
  accepts_nested_attributes_for :questions
end
