class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :id_test
      t.integer :id_user
      t.float :score
      t.integer :total_time

      t.timestamps
    end
  end
end
