class AddUserToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :user, foreign_key: true, null: false
  end
end
