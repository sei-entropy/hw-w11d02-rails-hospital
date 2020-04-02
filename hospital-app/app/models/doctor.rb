class Doctor < ApplicationRecord
    validates :first_name, :last_name, :zip_code, :speciality, presence: true
    has_many :patients
end
