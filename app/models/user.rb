class User < ActiveRecord::Base
  devise :registerable, :recoverable, :rememberable, :database_authenticatable,
         :trackable, :validatable
  has_many :registries
  has_many :courses, through: :registries
  
  before_validation :normalize_name, on: [:create, :update]#before create and update, execute normalize_name
  def normalize_name #Format first letters capital and next letters tiny
  	self.name = name.downcase.titleize
  end
end
