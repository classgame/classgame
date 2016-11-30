class User < ActiveRecord::Base
  devise :registerable, :recoverable, :rememberable, :database_authenticatable,
  :trackable, :validatable

  has_many   :registries
  has_many   :courses,  through: :registries
  has_many   :contents, through: :histories  
  has_many   :histories
  belongs_to :performance
  belongs_to :address

  accepts_nested_attributes_for :address, allow_destroy: true
  accepts_nested_attributes_for :performance, allow_destroy: true

  before_save :normalize_name, on: [:create, :update]
  
  scope :search, -> (query) { where("name like ?", "%#{query}%") }

  private
  def normalize_name
    self.name = name.downcase.titleize
  end

end
