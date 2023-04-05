class Employee < ApplicationRecord
    belongs_to :department
    validates :Name, uniqueness: true
    after_create :setting_up_full_name

    def setting_up_full_name
        self.update(full_name: "#{self.Name} #{self.Last_Name}")
    end
end
