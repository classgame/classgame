class History < ActiveRecord::Base
	belongs_to :user
	belongs_to :content
	has_many :answers

	accepts_nested_attributes_for :answers, 
		reject_if: Proc.new {|attributes| attributes[:question_id].blank? || attributes[:alternative_id].blank? }

	before_create :collect_experience_exercise, if: :exercise
	before_create :collect_experience_text, if: :text
	before_create :collect_experience_video, if: :video

	def collect_experience_exercise
		self.experience = self.answers.map(&:value_experience).reduce(&:+) || 0
	end

	def collect_experience_text
		self.experience = self.content.experience
	end

	def collect_experience_video
		self.experience = self.content.experience
	end

	def exercise
		self.content.type == "Exercise"
	end

	def text
		self.content.type == "Text"
	end

	def video
		self.content.type == "Video"
	end

end
