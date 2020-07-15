class Group < ApplicationRecord
    validates :name, presence: true, length: { in: 1..50 }

    has_many :transactions
    belongs_to :user

    def average_ratings
        self.transactions.average(:rating)
    end
end
