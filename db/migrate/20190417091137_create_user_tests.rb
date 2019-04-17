class CreateUserTests < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tests do |t|
      t.integer :id_test
      t.integer :id_user
      t.integer :id_user_answer

      t.timestamps
    end
  end
end
