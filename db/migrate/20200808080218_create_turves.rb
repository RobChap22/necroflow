class CreateTurves < ActiveRecord::Migration[6.0]
  def change
    create_table :turves do |t|
      t.references :gang, null: false, foreign_key: true
      t.references :territory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
