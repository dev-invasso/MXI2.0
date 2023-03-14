class LineItem < ApplicationRecord
  has_many :core_supply_line_items
  has_many :core_supplies, through: :core_supply_line_items
  has_many :manifest_line_items
end
