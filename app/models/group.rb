class Group < ApplicationRecord
  validates :name, presence: true, length: { in: 1..50 }

  has_one_attached :icon
  has_many :transactions
  belongs_to :user

  def average_ratings
      transactions.average(:rating) # rubocop:todo Layout/IndentationWidth
  end
end
