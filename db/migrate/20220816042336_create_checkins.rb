class CreateCheckins < ActiveRecord::Migration[7.0]
  def change
    create_table :checkins do |t|
      t.references :user, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true
      t.integer :number_of_visits
      t.boolean :is_public

      t.timestamps
    end
  end
end
