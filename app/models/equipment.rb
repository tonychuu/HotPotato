class Equipment < ActiveRecord::Base
  validates :brand, presence: true
  validates :model, presence: true
  validates :rental_cost, presence: true
  validates :msrp_cost, presence: true
  validates :rented, presence: true
  validates :lost, presence: true
  validates :times_rented, presence: true
  validates :serial_number, uniqueness: true
end