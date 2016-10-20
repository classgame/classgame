class Chapter < ActiveRecord::Base

  has_many :exercises, through: :contents
  has_many :videos,    through: :contents
  has_many :texts,     through: :contents
  has_many :contents

  belongs_to :course

  def all_contents
  	contents = [self.exercises, self.texts, self.videos]
  	contents.sort do |x,y|
		x[0].position <=> y[0].position
  	end
  end

  def set_description(description)
  	update_attribute(:description, description)
  end
end

