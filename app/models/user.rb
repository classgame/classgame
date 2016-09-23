class User < ActiveRecord::Base
  devise :registerable, :recoverable, :rememberable, :database_authenticatable,
         :trackable, :validatable
  has_many :registries
  has_many :courses, through: :registries
end
