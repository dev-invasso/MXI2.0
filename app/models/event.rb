class Event < ApplicationRecord
    has_many :supply_assignments, as: :assignable
    has_many :supplies, through: :supply_assignments
    has_many :equipment_assignments, as: :equipmentable
    has_many :equipment, through: :equipment_assignments
    has_many :event_staff_lists
    has_many :staff_members, through: :event_staff_lists
    
    belongs_to :customer
end
