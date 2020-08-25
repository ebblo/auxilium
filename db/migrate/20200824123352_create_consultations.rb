class CreateConsultations < ActiveRecord::Migration[6.0]
  def change
    create_table :consultations do |t|
      t.string :title
      t.date :date
      t.string :public_report
      t.string :private_report
      t.string :medical_prescription
      t.integer :patient_id, null: false
      t.integer :doctor_id, null: false

      t.timestamps
    end
  end
end
