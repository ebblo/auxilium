class Medication < ApplicationRecord
  has_many :consultation_medications

  validates :name, presence: true
end
