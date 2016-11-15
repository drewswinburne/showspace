class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :flyer_img
      t.date :starts_at_date
      t.time :starts_at_hour
      t.timestamps
    end
  end
end
