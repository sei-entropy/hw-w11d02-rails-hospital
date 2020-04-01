class Patient < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :diagnosis, presence: true

    belongs_to :doctor
end
