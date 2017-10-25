# frozen_string_literal: true
class Question < ActiveRecord::Base
  belongs_to :exercise
  has_many :alternatives
  has_many :answer

  accepts_nested_attributes_for :alternatives, allow_destroy: true

  def correct_alternatives
    alternatives.correct
  end

  def incorrect_alternatives
    alternatives.incorrect
  end
end
