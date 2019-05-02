class RemoveIdTopicFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :id_topic, :integer
  end
end
