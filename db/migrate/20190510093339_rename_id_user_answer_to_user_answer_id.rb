class RenameIdUserAnswerToUserAnswerId < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_tests, :id_user_answer, :user_answer_id
  end
end
