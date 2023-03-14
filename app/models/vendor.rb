class Vendor < ApplicationRecord
  belongs_to :vendor_type
  has_many :site_vendors
  has_many :sites, through: :site_vendors
end
