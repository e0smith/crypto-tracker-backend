class Portfolio < ApplicationRecord
    # has_many :users
    validates :balance, presence: true
    validates_length_of :balance, minimum: => .00000000000000001
end
