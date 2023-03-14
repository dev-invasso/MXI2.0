class StaffMember < ApplicationRecord
    has_many: event_staff_lists
    has_many: events, through: :event_staff_lists
end
