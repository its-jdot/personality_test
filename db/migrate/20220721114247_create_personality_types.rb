class CreatePersonalityTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :personality_types do |t|
      t.string :personality_type
      t.integer :personality_score

      t.timestamps
    end
  end
end
