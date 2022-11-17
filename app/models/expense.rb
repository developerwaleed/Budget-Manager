class Expense < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :amount, presence: true

  belongs_to :user
  belongs_to :group
end
