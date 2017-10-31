# frozen_string_literal: true
class Category < ActiveRecord::Base
  has_and_belongs_to_many :courses

  has_attached_file :picture, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :picture, content_type: %r{\Aimage\/.*\z}
end
