class Dog < ApplicationRecord
    has_many :strolls
    has_many :dog_sitters, through: :appointments
    belongs_to :city
end
