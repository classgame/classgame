class Chapter < ActiveRecord::Base

  has_many :exercises, through: :contents
  has_many :videos,    through: :contents
  has_many :texts,     through: :contents
  has_many :contents

end
