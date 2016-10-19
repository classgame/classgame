class Chapter < ActiveRecord::Base

  has_many :exercises, through: :contents
  has_many :videos,    through: :contents
  has_many :texts,     through: :contents
  has_many :contents

  belongs_to :course

  def all_contents
  	return {exercises: self.exercises, texts:self.texts, videos: self.videos}
  end
end
