class CreateConsultationMedications < ActiveRecord::Migration[6.0]
  def change
    create_table :consultation_medications do |t|
      t.references :consultation, null: false, foreign_key: true
      t.references :medication, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
