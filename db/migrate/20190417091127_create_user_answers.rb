class CreateUserAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_answers do |t|
      t.integer :id_question
      t.integer :id_answer

      t.timestamps
    end
  end
end
