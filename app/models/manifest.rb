class Manifest < ApplicationRecord
  belongs_to :manifestable, polymorphic: true
  belongs_to :transporter
  belongs_to :designated_facility
  belongs_to :manifest_type
  belongs_to :site, optional: true
  belongs_to :event, optional: true
  has_many :manifest_line_items
end
