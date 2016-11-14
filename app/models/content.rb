class Content < ActiveRecord::Base
	belongs_to :chapter
	has_many :histories
	has_many :users, through: :histories 
end
