class Alternative < ActiveRecord::Base
  belongs_to :question

  scope :correct, -> { where(:correct => true)  }
  scope :incorrect, -> { where(:correct => false) }
  
  def correct?
    return (self.correct == true)
  end
end
