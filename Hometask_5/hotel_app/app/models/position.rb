class Position < ApplicationRecord
  has_many :employees, dependent: :destroy
  belongs_to :hotel
end
