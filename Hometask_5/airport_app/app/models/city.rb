class City < ApplicationRecord
  belongs_to :country
  has_many :airports, dependent: :destroy

  mount_uploader :avatar, AvatarUploader
end
