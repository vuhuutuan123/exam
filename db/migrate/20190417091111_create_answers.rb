class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :id_question
      t.string :content

      t.timestamps
    end
  end
end
