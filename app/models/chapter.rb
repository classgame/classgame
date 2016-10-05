class Chapter < ActiveRecord::Base
  has_many :contents
  # has_many :exercises, :through => :contents
end
