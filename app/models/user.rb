class User < ActiveRecord::Base
  devise :registerable, :recoverable, :rememberable, :database_authenticatable,
         :trackable, :validatable
  has_many :registries
  has_many :courses, through: :registries
  
  before_save :normalize_name, on: [:create, :update]
  private
	  def normalize_name 
	  	self.name = name.downcase.titleize
	  end
end
