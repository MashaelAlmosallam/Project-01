class Order < ApplicationRecord
    has_many :arts
    belongs_to :user
end
