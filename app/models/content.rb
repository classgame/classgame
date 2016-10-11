class Content < ActiveRecord::Base
  belongs_to :chapter
  has_one :exercise
  belongs_to :content_type
end
