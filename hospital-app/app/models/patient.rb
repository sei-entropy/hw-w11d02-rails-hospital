class Patient < ApplicationRecord
    validates :first_name, :last_name, :diagnosis, :born_on, presence: true
    validates :first_name, :last_name, length: { maximum: 20 }
    validates :first_name, :last_name, length: { minimum: 3 }

    belongs_to :doctor
end
