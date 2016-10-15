class User < ActiveRecord::Base
  devise :registerable, :recoverable, :rememberable, :database_authenticatable,
  :trackable, :validatable

  has_many :registries
  has_many :courses, through: :registries

  before_save :normalize_name, on: [:create, :update]

  belongs_to :address
  belongs_to :performace

  accepts_nested_attributes_for :address, allow_destroy: true
  accepts_nested_attributes_for :performace, allow_destroy: true

  private
  def normalize_name
    self.name = name.downcase.titleize
  end

end
