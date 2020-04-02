class Doctor < ApplicationRecord

    has_many :patients

    validates :name, presence: true
    validates :family_name, presence: true
    validates :zip_code, presence: true,
    length: { minimum: 5 }
    validates :specialty, presence: true
end
