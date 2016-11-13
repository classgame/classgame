class Question < Content
  
  has_many :alternatives

  accepts_nested_attributes_for :alternatives

  def correct_alternatives
    return alternatives.correct
  end

  def incorrect_alternatives
    return alternatives.incorrect
  end

end
