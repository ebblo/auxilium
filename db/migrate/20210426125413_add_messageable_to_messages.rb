class AddMessageableToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :messageable, polymorphic: true, null: false
  end
end
