class RenameIdTestToTestId < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_tests, :id_test, :test_id
  end
end
