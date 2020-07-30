class DogSitter < ApplicationRecord
    has_many :strolls
    has_many :dogs, through: :appointments
    belongs_to :city
end
