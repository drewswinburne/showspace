class AddCostToShows < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :cost, :string
  end
end
