class Content < ActiveRecord::Base

  belongs_to :content_type
  belongs_to :chapter
  has_one :exercise
  has_one :video
  has_one :text

end
