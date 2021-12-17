class Physician < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments

    scope :out_of_print, ->{ where(created_at: Time.now) }
end