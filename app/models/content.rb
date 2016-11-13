class Content < ActiveRecord::Base
	belongs_to :chapter
	has_many :histories
end
