class Chapter < ActiveRecord::Base

  has_many :exercises, through: :contents
  has_many :videos,    through: :contents
  has_many :texts,     through: :contents
  has_many :contents

  belongs_to :course

  accepts_nested_attributes_for :exercises

end
