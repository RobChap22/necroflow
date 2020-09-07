class AddHouseToGangs < ActiveRecord::Migration[6.0]
  def change
    add_column :gangs, :house, :string, default: "Other"
  end
end
