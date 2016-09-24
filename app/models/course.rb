class Course < ActiveRecord::Base
  belongs_to :category 
  has_many :registries
  has_many :users, through: :registries

end
