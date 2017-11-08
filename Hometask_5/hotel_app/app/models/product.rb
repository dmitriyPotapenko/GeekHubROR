class Product < ApplicationRecord
  belongs_to :category, required: false

  validate :my_validation

  private

  def my_validation
    if new_name != 'small'
      errors.add(:new_name, "should be small")
    end
  end
end
