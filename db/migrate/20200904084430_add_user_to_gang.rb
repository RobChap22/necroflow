class AddUserToGang < ActiveRecord::Migration[6.0]
  def change
    add_reference :gangs, :user, foreign_key: true
  end
end
