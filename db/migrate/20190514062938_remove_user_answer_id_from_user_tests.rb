class RemoveUserAnswerIdFromUserTests < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_tests, :user_answer_id, :int
  end
end
