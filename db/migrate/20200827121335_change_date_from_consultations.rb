class ChangeDateFromConsultations < ActiveRecord::Migration[6.0]
  def change
    change_column :consultations, :date, :datetime
  end
end
