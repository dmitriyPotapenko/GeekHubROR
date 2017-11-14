class Entertainment < ApplicationRecord
  belongs_to :hotel

  mount_uploader :avatar, AvatarUploader
end
