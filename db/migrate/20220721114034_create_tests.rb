class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.integer :test_score
      t.integer :user_id

      t.timestamps
    end
  end
end
