# frozen_string_literal: true
class Course < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :registries
  has_many :users, through: :registries
  has_many :chapters

  has_attached_file :picture, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :picture, content_type: %r{\Aimage\/.*\z}

  accepts_nested_attributes_for :categories
end
