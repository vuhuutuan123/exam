class AddIdTestToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :id_test, :integer
  end
end
