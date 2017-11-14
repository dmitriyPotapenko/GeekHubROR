class Employee < ApplicationRecord
  has_many :works, dependent: :destroy
  belongs_to :position

  mount_uploader :avatar, AvatarUploader
end
