class Site < ApplicationRecord
  belongs_to :customer
  has_many :supply_assignments, as: :assignable
  has_many :supplies, through: :supply_assignments
end
