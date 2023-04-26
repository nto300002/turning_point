class CreateDiaries < ActiveRecord::Migration[7.0]
  def change
    create_table :diaries do |t|
      t.integer :user_id
      t.integer :searchword_id
      t.string :title
      t.text :detail
      t.string :emotion
      t.integer :evaluation
      # t.datetime :created_at
      # t.datetime :updated_at

      t.timestamps
    end
  end
end
