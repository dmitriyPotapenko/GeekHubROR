class Continent < ApplicationRecord
  has_many :countries, dependent: :destroy

  accepts_nested_attributes_for :countries

  mount_uploader :image, ImageUploader

  self.per_page = 2
end
