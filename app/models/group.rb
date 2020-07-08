class Group < ApplicationRecord
    validates :name, presence: true, length: { in: 1..50 }

    has_many :transactions
    belongs_to :user
end
