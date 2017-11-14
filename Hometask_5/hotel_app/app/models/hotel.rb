class Hotel < ApplicationRecord
  has_many :tourists, dependent: :destroy
  has_many :entertainments, dependent: :destroy
  has_many :positions, dependent: :destroy
  belongs_to :city

  mount_uploader :avatar, AvatarUploader
end
