class Patient < ApplicationRecord
    validates :first_name,:last_name, presence: true
    has_one :doctor
end
