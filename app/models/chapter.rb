class Chapter < ActiveRecord::Base

  has_many :exercises
  has_many :videos
  has_many :texts

  belongs_to :course

  def all_contents
  	contents = self.exercises + self.texts + self.videos
  	contents.sort do |x,y|
		 x.position <=> y.position
  	end
  end
end

