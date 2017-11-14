class Continent < ApplicationRecord
  has_many :countries, dependent: :destroy

  mount_uploader :avatar, AvatarUploader
end
