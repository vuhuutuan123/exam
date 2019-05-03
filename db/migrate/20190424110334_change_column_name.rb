class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :answers, :id_question, :question_id
  end
end
