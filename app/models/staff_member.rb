class StaffMember < ApplicationRecord
    has_many :event_staff_lists
    has_many :events, through: :event_staff_lists
    belongs_to :staff_group
    has_many :staff_job_capabilities
    has_many :job_capabilities, through: :staff_job_capabilities
    has_many :referral_bonuses_as_refered_staff, class_name: 'ReferralBonus', foreign_key: 'refered_staff_id'
    has_many :referral_bonuses_as_referer_staff, class_name: 'ReferralBonus', foreign_key: 'referer_staff_id'
end
