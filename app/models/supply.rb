class Supply < ApplicationRecord
  has_many :supply_assignments
  has_many :sites, through: :supply_assignments, source: :assignable, source_type: 'Site'
end
