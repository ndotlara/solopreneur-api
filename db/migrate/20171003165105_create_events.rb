class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_name, null: false
      t.date :date, null: false
      t.time :time, null: false
      t.string :street_address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zip_code, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
