class Content < ActiveRecord::Base

  belongs_to :chapter
  belongs_to :attempt
  has_one :exercise
  has_one :video
  has_one :text

  
end
