class EquipmentAssignment < ApplicationRecord
  belongs_to :equipmentable, polymorphic: true
  belongs_to :quipment
end
