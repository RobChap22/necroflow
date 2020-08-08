class CreateTurves < ActiveRecord::Migration[6.0]
  def change
    create_table :turves do |t|
      t.references :gangs, null: false, foreign_key: true
      t.references :territories, null: false, foreign_key: true

      t.timestamps
    end
  end
end
