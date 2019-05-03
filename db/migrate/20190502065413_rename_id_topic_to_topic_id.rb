class RenameIdTopicToTopicId < ActiveRecord::Migration[5.2]
  def change
    rename_column :tests, :id_topic, :topic_id
  end
end
