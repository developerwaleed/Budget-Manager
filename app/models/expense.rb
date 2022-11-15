class Expense < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :icon, presence: true, length: { maximum: 250 }

  belongs_to :user
  belongs_to :group
end
