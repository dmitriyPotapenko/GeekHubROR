class Employee < ApplicationRecord
  has_many :works, dependent: :destroy
  belongs_to :position
end
