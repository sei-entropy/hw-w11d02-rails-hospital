class Patient < ApplicationRecord
    belongs_to :doctor
    validates :first_name,:last_name,:diagnosis, presence: true
end
