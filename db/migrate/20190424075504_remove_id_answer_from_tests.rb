class RemoveIdAnswerFromTests < ActiveRecord::Migration[5.2]
  def change
    remove_column :tests, :id_answer, :string
  end
end
