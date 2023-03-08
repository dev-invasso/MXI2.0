class SupplyAssignment < ApplicationRecord
  belongs_to :assignable, polymorphic: true
  belongs_to :supply
end
