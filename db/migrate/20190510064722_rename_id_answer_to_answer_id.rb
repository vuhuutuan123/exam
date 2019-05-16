class RenameIdAnswerToAnswerId < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_answers, :id_answer, :answer_id
  end
end
