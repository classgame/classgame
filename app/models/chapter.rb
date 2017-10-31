# frozen_string_literal: true
class Chapter < ActiveRecord::Base
  belongs_to :course
  has_many :contents, -> { order(:position) }
end
