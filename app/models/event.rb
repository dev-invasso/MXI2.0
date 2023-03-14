class Event < ApplicationRecord
  has_many :supply_assignments, as: :assignable
  has_many :supplies, through: :supply_assignments
  has_many :equipment_assignments, as: :equipmentable
  has_many :equipment, through: :equipment_assignments
  has_many :event_staff_lists
  has_many :staff_members, through: :event_staff_lists
  has_many :manifests, as: :relatable
  belongs_to :customer
  has_many :reports
  has_one :meetup
  has_one :event_setup
end
