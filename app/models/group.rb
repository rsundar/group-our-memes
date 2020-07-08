class Group < ApplicationRecord
    validates :name, presence: true, length: { in: 1..50 }, uniqueness: true

    has_many :transactions
    belongs_to :user
end
