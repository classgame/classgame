class Question < ActiveRecord::Base
  belongs_to :exercise
  has_many :alternatives
  has_many :answer

  accepts_nested_attributes_for :alternatives

  def correct_alternatives
    return alternatives.correct
  end

  def incorrect_alternatives
    return alternatives.incorrect
  end

end
