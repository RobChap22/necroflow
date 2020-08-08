class CreateGangs < ActiveRecord::Migration[6.0]
  def change
    create_table :gangs do |t|
      t.string :name

      t.timestamps
    end
  end
end
