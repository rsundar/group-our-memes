class Transaction < ApplicationRecord
  validates :name, presence: true, length: { in: 5...30 }, uniqueness: true
  validates :about, presence: true, length: { in: 6...150 }
  validates :rating, presence: true, inclusion: { in: 1...10 }

  belongs_to :user
  belongs_to :group, optional: true

  scope :desc, -> { order('created_at DESC') }
end
