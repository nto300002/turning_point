class ChangeColumnNullConstraintInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :name, :string, null: false, unique: true
    change_column :users, :email, :string, null: false, unique: true
    change_column :users, :password, :string, null: false, unique: true
  end
end
