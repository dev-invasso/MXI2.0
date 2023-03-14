class Site < ApplicationRecord
  belongs_to :customer
  has_many :supply_assignments, as: :assignable
  has_many :supplies, through: :supply_assignments
  has_many :equipment_assignments, as: :equipmentable
  has_many :equipment, through: :equipment_assignments
  has_many :site_vendors
  has_many :vendors, through: :site_vendors
  has_many :events
  has_many :manifests, as: :relatable
  
end
