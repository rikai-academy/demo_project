class Appointment < ApplicationRecord
    belongs_to :physician, -> { where active: true }
    belongs_to :patient
end