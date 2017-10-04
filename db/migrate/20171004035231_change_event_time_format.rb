class ChangeEventTimeFormat < ActiveRecord::Migration[5.0]
  def change
    change_column :events, :date, :string, null: false
    change_column :events, :time, :string, null: false
  end
end
