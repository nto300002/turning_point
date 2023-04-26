class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.text :goal

      t.timestamps
    end
  end
end
