class City < ApplicationRecord
  has_many :hotels, dependent: :destroy
  belongs_to :country

  mount_uploader :avatar, AvatarUploader
end
