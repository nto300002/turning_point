class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      # t.integer :user_id
      # t.integer :turningpoint_id
      t.string :question
      t.string :column

      t.references :user, null: false, foreign_key: true
      t.references :turningpoint, null: false, foreign_key: true

      t.timestamps
    end
  end
end
