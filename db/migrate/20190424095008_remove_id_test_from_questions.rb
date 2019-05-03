class RemoveIdTestFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :id_test, :stirng
  end
end
