class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.integer :id_answer
      t.integer :id_question
      t.integer :id_topic
      t.integer :time
      t.boolean :status

      t.timestamps
    end
  end
end
