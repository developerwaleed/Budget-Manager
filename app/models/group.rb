class Group < ApplicationRecord
  belongs_to :user
  has_many :expenses, dependent: :delete_all
end
