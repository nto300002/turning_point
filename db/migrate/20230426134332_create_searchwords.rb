class CreateSearchwords < ActiveRecord::Migration[7.0]
  def change
    create_table :searchwords do |t|
      t.integer :user_id
      t.string :word
      t.integer :word_count

      t.timestamps
    end
  end
end
