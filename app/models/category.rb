class Category < ActiveRecord::Base
  has_many :courses
end
