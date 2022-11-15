class Group < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :icon, presence: true, length: { maximum: 250 }
  
  belongs_to :user
  has_many :expenses, dependent: :delete_all
end
