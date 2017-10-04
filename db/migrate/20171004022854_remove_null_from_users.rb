class RemoveNullFromUsers < ActiveRecord::Migration[5.0]
  def change
    change_column_null :users, :first_name, true
    change_column_null :users, :last_name, true
    change_column_null :users, :company, true
    change_column_null :users, :title, true
    change_column_null :users, :city, true
    change_column_null :users, :state, true
    change_column_null :users, :bio, true
    change_column_null :users, :interests, true
  end
end
