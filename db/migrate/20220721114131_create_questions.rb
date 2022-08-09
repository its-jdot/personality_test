class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question_body
      t.integer :choice_id
      t.integer :test_id
      t.integer :question_score
      t.string :user_choice

      t.timestamps
    end
  end
end
