class ChangeTitleNullConstraintInDiaries < ActiveRecord::Migration[7.0]
  def change
    change_column :diaries, :title, :string, null: false
  end
end
