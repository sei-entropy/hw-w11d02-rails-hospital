class Patient < ApplicationRecord
    belongs_to :doctor
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :diagnosis, presence: true

end
