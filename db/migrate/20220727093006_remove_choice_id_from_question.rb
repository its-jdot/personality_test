class RemoveChoiceIdFromQuestion < ActiveRecord::Migration[6.0]
  def change
    remove_column :questions, :choice_id, :integer
  end
end
