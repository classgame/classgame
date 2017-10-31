# frozen_string_literal: true
class User < ActiveRecord::Base
  devise :registerable, :recoverable, :rememberable, :database_authenticatable,
         :trackable, :validatable

  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :avatar, content_type: %r{\Aimage\/.*\z}

  has_many   :registries
  has_many   :courses,  through: :registries
  has_many   :contents, through: :histories
  has_many   :histories
  belongs_to :performance
  belongs_to :address

  accepts_nested_attributes_for :address, allow_destroy: true
  accepts_nested_attributes_for :performance, allow_destroy: true

  before_save :normalize_name, on: [:create, :update]
  before_create :create_performance, :create_address

  private

  def create_performance
    self.performance = Performance.create
  end

  def create_address
    self.address = Address.create
  end

  def normalize_name
    self.name = name.downcase.titleize
  end
end
