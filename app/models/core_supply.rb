class CoreSupply < ApplicationRecord
  belongs_to :supply_category
  has_many :core_supply_line_items
  has_many :line_items, through: :core_supply_line_items
  has_many :manifest_line_items
end
