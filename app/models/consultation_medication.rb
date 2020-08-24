class ConsultationMedication < ApplicationRecord
  belongs_to :consultation
  belongs_to :medication

  validates :quantity
end
