class Airport < ApplicationRecord
  belongs_to :city
  has_many :planes, dependent: :destroy
end
