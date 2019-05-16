class RenameIdQuestionToQuestionId < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_answers, :id_question, :question_id
  end
end
