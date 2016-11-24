class Performance < ActiveRecord::Base
	has_one :user
	
	after_find :collect_all_scores

	def collect_all_scores
		update_attributes(total_experience: self.user.histories.map(&:experience).reduce(&:+) || 0) 
	end
end
