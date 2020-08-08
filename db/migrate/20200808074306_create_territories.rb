class CreateTerritories < ActiveRecord::Migration[6.0]
  def change
    create_table :territories do |t|
      t.string :name
      t.string :pre_battle
      t.string :post_battle

      t.timestamps
    end
  end
end
