class CreateVideorooms < ActiveRecord::Migration[6.0]
  def change
    create_table :videorooms do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
