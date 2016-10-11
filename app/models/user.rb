class User < ActiveRecord::Base
  devise :registerable, :recoverable, :rememberable, :database_authenticatable,
         :trackable, :validatable

  belongs_to :address
  belongs_to :performace

  accepts_nested_attributes_for :address, allow_destroy: true

end
