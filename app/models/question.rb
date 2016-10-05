class Question < ActiveRecord::Base
  belongs_to :exercise
  has_many :alternatives
end
