class RemoveUserIdFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :user_id, :integer
    remove_column :messages, :to_user_id, :integer
  end
end
