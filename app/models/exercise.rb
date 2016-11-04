class Exercise < ActiveRecord::Base

  belongs_to :chapter
  has_many :questions
  accepts_nested_attributes_for :questions

  def next
  	n = self.chapter.all_contents.select{|c| c.position == self.position + 1}
  	n.first
  end
  
  def previous
		p = self.chapter.all_contents.select{|c| c.position == self.position - 1}
		p.first
	end
end
