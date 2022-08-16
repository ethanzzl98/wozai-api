class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :address
      t.string :phone
      t.string :name
      t.datetime :open_time
      t.datetime :close_time
      t.string :discount
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
