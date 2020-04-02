class Patient< ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :diagnosis, presence: true
    validates :born_on, presence: true

    belongs_to :doctors
end
