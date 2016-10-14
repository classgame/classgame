class Exercise < ActiveRecord::Base

  belongs_to :content
  has_many :questions

end
