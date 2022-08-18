class AddDefaultValues < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:checkins, :number_of_visits, 1)
    change_column_default(:checkins, :is_public, false)
  end
end
