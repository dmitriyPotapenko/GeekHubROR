class Country < ApplicationRecord
  has_many :cities, dependent: :destroy
  belongs_to :continent

  mount_uploader :avatar, AvatarUploader
end
