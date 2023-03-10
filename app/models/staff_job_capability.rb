class StaffJobCapability < ApplicationRecord
  belongs_to :job_capability
  belongs_to :staff_member
end
