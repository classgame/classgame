class Course < ActiveRecord::Base
  has_many :registries
  has_many :users, through: :registries
end
