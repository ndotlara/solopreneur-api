class ChangeEventTimeFormat < ActiveRecord::Migration[5.0]
  def change
    change_column :event, :date, :string, null: false
    change_column :event, :time, :string, null: false
  end
end
