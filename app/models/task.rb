class Task < ApplicationRecord
    validates :title ,presence: true
    validates :memo ,presence: true
end

