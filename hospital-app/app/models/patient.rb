class Patient < ApplicationRecord
    belongs_to :doctor, dependent: :destroy
end
