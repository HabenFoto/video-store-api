class Video < ApplicationRecord
  has_many :rentals
  has_many :customers, through: :rentals

  validates :title, presence: true
  validates :overview, presence: true
  validates :release_date, presence: true
  validates :total_inventory, presence: true
  validates :available_inventory, presence: true

  def decrease_inventory
    self.available_inventory -= 1
    save
  end

  def increase_inventory
    self.available_inventory += 1
    save
  end
end
