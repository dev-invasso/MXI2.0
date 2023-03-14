class EventStaffList < ApplicationRecord
  belongs_to :event
  belongs_to :staff_member
end
