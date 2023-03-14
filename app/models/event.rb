class Event < ApplicationRecord
    has_many :supply_assignments, as: :assignable
    has_many :supplies, through: :supply_assignments
    has_many :equipment_assignments, as: :equipmentable
    has_many :equipment, through: :equipment_assignments
    belongs_to :customer
end
