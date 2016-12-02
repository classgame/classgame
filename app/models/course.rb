class Course < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :registries
  has_many :users, through: :registries

  has_many :chapters
  accepts_nested_attributes_for :categories
end
