class Customer < ApplicationRecord
    belongs_to :user
    has_many :waste_generators
    has_many :customer_contracts
    has_many :sites
    has_many :events
end
