class Store < ApplicationRecord
    has_one :owner
    has_many :employees
    validates :name, presence: true
end
