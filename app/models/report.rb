class Report < ApplicationRecord
  belongs_to :event
  has_many :report_line_items
  has_many :report_other_item_details
end
