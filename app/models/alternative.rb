class Alternative < ActiveRecord::Base
  belongs_to :question
  has_many   :answer

  scope :correct, -> { where(:correct => true)  }
  scope :incorrect, -> { where(:correct => false) }
  
  def correct?
    return (self.correct == true)
  end
end
