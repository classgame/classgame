class User < ActiveRecord::Base
  devise :registerable, :recoverable, :rememberable, :database_authenticatable,
         :trackable, :validatable

  belongs_to :performace

  accepts_nested_attributes_for :performace, allow_destroy: true

end
