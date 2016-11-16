class Answer < ActiveRecord::Base
	belongs_to :question
	belongs_to :history
	belongs_to :alternative

	validates :alternative_id, presence: true

	def value_experience
		if self.alternative.correct?
			self.correct = true
			self.experience = self.question.experience
		else
			self.correct = false
			self.experience = 0
		end
	end

end
