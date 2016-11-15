class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :flyer_img
      t.datetime :starts_at
      t.timestamps
    end
  end
end
