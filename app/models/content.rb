class Content < ActiveRecord::Base
  belongs_to :chapter
  has_one :exercise
end
