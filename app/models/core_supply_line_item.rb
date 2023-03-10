class CoreSupplyLineItem < ApplicationRecord
  belongs_to :core_supply
  belongs_to :line_item
end
