class Equipment < ApplicationRecord
  has_many :equipment_assignments
  has_many :sites, through: :equipment_assignments, source: :equipmentable, source_type: 'Site'
end
