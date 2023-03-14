class DriverApplication < ApplicationRecord
  belongs_to :staff_group
  has_many :driver_application_addresses
  has_many :driver_application_bank_accounts
  has_many :driver_application_histories
  has_many :driver_violation_certificates
  has_many :driver_traffic_convictions
end
