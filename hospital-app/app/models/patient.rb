class Patient < ApplicationRecord
    validates :first_name, :last_name, :diagnosis, :born_on, presence: true
    belongs_to :doctor
end
