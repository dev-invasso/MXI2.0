class ManifestLineItem < ApplicationRecord
    belongs_to :manifest
    belongs_to :line_item
    belongs_to :core_supply
end
