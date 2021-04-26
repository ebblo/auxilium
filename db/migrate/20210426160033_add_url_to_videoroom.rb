class AddUrlToVideoroom < ActiveRecord::Migration[6.0]
  def change
    add_column :videorooms, :url, :string
  end
end
