class RemovePhotoUrlFromVenues < ActiveRecord::Migration[7.0]
  def change
    remove_column :venues, :photo_url, :string
    add_column :venues, :photo, :string
  end
end
