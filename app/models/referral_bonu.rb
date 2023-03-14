class ReferralBonu < ApplicationRecord
  belongs_to :refered_staff, class_name: 'StaffMember', foreign_key: 'refered_staff_id'
  belongs_to :referer_staff, class_name: 'StaffMember', foreign_key: 'referer_staff_id'
end
