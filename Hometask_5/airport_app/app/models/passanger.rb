class Passanger < ApplicationRecord
  has_many :tickets, dependent: :destroy
end
