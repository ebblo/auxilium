class AddDescriptionToConsultationMedication < ActiveRecord::Migration[6.0]
  def change
    add_column :consultation_medications, :description, :string
  end
end
