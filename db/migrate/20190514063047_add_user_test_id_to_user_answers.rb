class AddUserTestIdToUserAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :user_answers, :user_test_id, :int
  end
end
