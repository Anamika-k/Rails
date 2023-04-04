class Employee < ApplicationRecord
    belongs_to :department
    validates :Name, uniqueness: true
end
