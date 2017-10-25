# frozen_string_literal: true
class Exercise < Content
  has_many :questions

  accepts_nested_attributes_for :questions, allow_destroy: true
end
