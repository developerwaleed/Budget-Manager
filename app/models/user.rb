class User < ApplicationRecord
    has_many :groups, dependent: :delete_all
    has_many :expenses, dependent: :delete_all
end
