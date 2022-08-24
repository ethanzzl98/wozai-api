class AddPhotourltovenue < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :photo_url, :string
    remove_column :venues, :photo, :string
  end
end
