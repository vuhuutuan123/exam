class RenameIdUserToUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_tests, :id_user, :user_id
  end
end
