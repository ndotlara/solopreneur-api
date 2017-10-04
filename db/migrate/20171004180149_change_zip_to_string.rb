class ChangeZipToString < ActiveRecord::Migration[5.0]
  def change
    change_column :events, :zip_code, :string, null: false
  end
end
