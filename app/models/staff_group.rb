class StaffGroup < ApplicationRecord
  has_many :staff_members
  has_many :driver_applications
end
