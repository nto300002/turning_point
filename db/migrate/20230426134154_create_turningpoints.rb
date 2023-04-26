class CreateTurningpoints < ActiveRecord::Migration[7.0]
  def change
    create_table :turningpoints do |t|
      # t.integer :user_id
      # t.integer :searchword_id
      t.string :current_task
      t.string :enthusiastic
      t.string :favorite_word
      t.string :unpleasant_thing
      t.string :what_i_want_to_do_in_the_future
      # t.string :created_at
      # t.string :updated_at

      t.references :user, null: false, foreign_key: true
      t.references :searchword, null: false, foreign_key: true

      t.timestamps
    end
  end
end
