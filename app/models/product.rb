class Product < ApplicationRecord
  before_validation :set_quantity_if_null

  validates :name, presence: true
  validates :quantity, numericality: true
  validates :available_on, presence: true
  validate :discontinued_not_before

private

  def set_quantity_if_null
    self.quantity = 0 if self.quantity.nil?
  end

  def discontinued_not_before
    errors.add(:discontinued_on, "can't exist before the available on date") if discontinued_on && discontinued_on < available_on
  end
end
