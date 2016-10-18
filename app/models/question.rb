class Question < ActiveRecord::Base
  belongs_to :exercise
  has_many :alternatives

  accepts_nested_attributes_for :alternatives
end
