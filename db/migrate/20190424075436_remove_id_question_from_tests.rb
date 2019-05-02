class RemoveIdQuestionFromTests < ActiveRecord::Migration[5.2]
  def change
    remove_column :tests, :id_question, :string
  end
end
