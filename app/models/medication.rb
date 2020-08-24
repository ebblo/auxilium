class Medication < ApplicationRecord
  has_many :consultation_medications

  validates :name
end
