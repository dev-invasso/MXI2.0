class User < ApplicationRecord
    has_many :report_a_problems
    has_many :user_logs
    has_one :user_password
    has_many :user_role
    has_many :user_sessions

end
