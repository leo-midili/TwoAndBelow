class Category < ApplicationRecord
  has_many :products

  validates :name, presence: true, uniqueness: true

  scope :name_is, -> (name) { find_by(name: name) }

  def self.select_options
    all.map { |c| [ c.name, c.id ] }
  end
end
